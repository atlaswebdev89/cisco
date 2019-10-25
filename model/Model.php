<?php

namespace Model;

class Model {
    
    protected $driver;
  
    public function __construct($driver) {
        if (isset($driver)){
            $this->driver=$driver;
        }else 
            throw new \PDOException ("Нет подключения к БД");
    }

    
    public function getCountDB () {
        return $this->driver->getCountBD();
    }
    
//ФУНКЦИИ АВТОРИЗАЦИИ И ДОБАВЛЕНИЯ ПОЛЬЗОВАТЕЛЕй
/*------------------------------------------------------------------------------------------------------------*/  
public function getDataUser ($id){
    
    $type = 'arraydata';
    $sql =   "SELECT * FROM `".PREF."users` "
                . " LEFT JOIN `".PREF."users_role` on `".PREF."users`.id_role = `".PREF."users_role`.id "
                . " LEFT JOIN `".PREF."users_data` on `".PREF."users_data`.id_users = `".PREF."users`.id "
                . " WHERE `".PREF."users`.id = :id";
            $data_array=array(
                    'id' => $id
                );
            $result =  $this->driver->query($sql, $type, $data_array); 
        return $result;    
}
//Get user data from table use param login and password
    public function getUsersLoginPass($login, $password) {
       $type = 'arraydata';
       $sql =   "SELECT `".PREF."users`.id, `".PREF."users`.banned  FROM `".PREF."users` "     
       . "WHERE `".PREF."users`.username = :username  and `".PREF."users`.password= :password";
//                $sql = "select `id`, `id_role` from ".PREF."users where `username` = :username  and `password`= :password"; 
                $data_array=array(
                    'username' => $login,
                    'password' => $password
                );
                $result =  $this->driver->query($sql, $type, $data_array); 
        return $result;  
    }

//Get User data from id
    public function getUsersdata ($id) {
        $type = 'arraydata';
        $sql = "select * from ".PREF."users_data where `id_users` = :id"; 
        $data_array=array(
                    'id' => $id
                );
         $result =  $this->driver->query($sql, $type, $data_array); 
         return $result;  
    }
    
    //Получение данных пользователя для входа в систему
    public function getDataAuthUser ($id) {
        $type = 'arraydata';
        $sql = "select * from ".PREF."users where `id` = :id"; 
        $data_array=array(
                    'id' => $id
                );
         $result =  $this->driver->query($sql, $type, $data_array); 
         return $result;  
    }

    //Update table sessions from users
    public function UpdateSessiondata (array $data) { 
       
        $type = 'count';
        $sql = "INSERT INTO ".PREF."users_data_auth (id_users, id_session, ip_address, agent_user_hash, lastVisit) VALUES (:id, :sess, :ip_adress, :agent_user_hash, :time_l)";
        $data_array=array(
                    'id'        => $data['id'],
                    'sess'      => $data['sess'],
                    'time_l'    => $data['timelogin'],
                    'ip_adress' => ip2long($data['ipAddress']),
                    'agent_user_hash' => md5($data['user_agent'])
                );
        $result =  $this->driver->query($sql, $type, $data_array); 
        if($result == 1){
            return TRUE;
        } else {
            return FALSE;
        }
    }


    //Delete from session is users LOGOUT and TIMEOUT
    public function deleteIdUserssession ($sess) {
        $type = 'count';
        $sql = "DELETE FROM ".PREF."users_data_auth where `id_session` = :sess";
                $data_array = array(
                    'sess'      => $sess
                );
            $result =  $this->driver->query($sql, $type, $data_array); 
        return $result;
    }
    
            
    public function updateAuthLog (array $data) {
        $type = 'count';
        $sql = "INSERT INTO ".PREF."users_log_data (id_users, id_session, ip_addr, user_agent, user_agent_hash, time_login, lastVisit) VALUES (:id, :sess, :ip_addr, :user_agent, :user_agent_hash, :time_i, :time_l)";
        $data_array=array(
                    'id'        => $data['id'],
                    'sess'      => $data['sess'],
                    'ip_addr'   => ip2long($data['ipAddress']),
                    'user_agent'=> $data['user_agent'],
                    'user_agent_hash' => md5($data['user_agent']),
                    'time_i'    => $data['timelogin'],
                    'time_l'    => $data['timelogin'] 
                );
        $result =  $this->driver->query($sql, $type, $data_array); 
        if ($result == 1 ) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
    public function addLogErrorAuth (array $data) {
        $type = 'count';
        $sql = "INSERT INTO ".PREF."auth_error (ip, reason) VALUES (:ip, :reason)";
        $data_array = array(
                    'ip'      => ip2long($data['ip']),
                    'reason'    => $data['message']
                );
        $result =  $this->driver->query($sql, $type, $data_array);
        return $result;
    }
    
    public function updateLogUsersLogout($sess) {
        $type = 'count';
        $sql = "UPDATE ".PREF."users_log_data SET `id_session` = :reason WHERE `id_session` = :session";
            $data_array=array(
                    'session'  => $sess,
                    'reason'  => 'LogOut'
                );      
         $result =  $this->driver->query($sql, $type, $data_array); 
    }
    
    public function updateLogTimeout ($sess) {
        $type = 'count';
        $sql = "UPDATE ".PREF."users_log_data SET `id_session` = :reason WHERE `id_session` = :session";
            $data_array=array(
                    'session'  => $sess,
                    'reason'  => 'TimeOut'
                );      
         $result =  $this->driver->query($sql, $type, $data_array);    
    }
    
    public function editUserdata (array $data) {
        $type = "count";
        $sql = "UPDATE `".PREF."users_data` set `name` = :name, `secondname` = :secondname, `phone` = :phone ,"
            . "`JobsDepartment` = :JobsDepartment "
            . " WHERE `".PREF."users_data`.`id`= :id";
        $data_array = array(
            'name' => $data['name'],
            'secondname' => $data['secondname'],
            'phone' => $data['phone'],
            'JobsDepartment' => $data['JobsDepartment'],
            'id' => $data['id_user']
        );
        $result =  $this->driver->query($sql, $type, $data_array);
        return $result;
        
    }
    
    public function changePassUser ($id, $pass) {
        $type = "count";
        $sql = "UPDATE `".PREF."users` set `password` = :password"
            . " WHERE `".PREF."users`.`id`= :id";
        $data_array = array(
            'password' => $pass,          
            'id' => $id
        );
        $result =  $this->driver->query($sql, $type, $data_array);
        return $result;
        
    }
    /*------------------------------------------------------------------------------------------------------------*/
    
/*---ONLINE USERS --------------------------------------------------------------------------------------------*/ 

    public function getUsersOnline () {
         $type = 'count';
         $sql = "select * from ".PREF."users_data_auth where  ((:time_now - `lastVisit`)) < ".INTERVAL_ONLINE.""; 
         $data_array=array(
                   'time_now'      => time()
                );
         $result =  $this->driver->query($sql, $type, $data_array); 
         return $result;  
    }

    //Delete from session is users TIMEOUT
    public function deleteSessions () {
        $type = 'count';
        $sql = "delete from ".PREF."users_data_auth where ((:time_now - `lastVisit`)) > ".MAX_TIME_SESSION."";
        $data_array=array(
                   'time_now'      => time()
                );
        $result =  $this->driver->query($sql, $type, $data_array); 
    }
     
  
    
//    Update timeVisit 
    public function updateTimeSessions($session) {
         $type = 'count';
         $sql = "UPDATE ".PREF."users_data_auth, ".PREF."users_log_data SET `".PREF."users_data_auth`.lastVisit = :time, `".PREF."users_log_data`.lastVisit = :time WHERE `".PREF."users_data_auth`.id_session = :session and `".PREF."users_log_data`.id_session = :session";
            $data_array=array(
                    'time'  => time(),
                    'session'  => $session
                );      
         $result =  $this->driver->query($sql, $type, $data_array); 
    }
/*------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------VIEWS-----------------------------------------------------*/
public function getMenu () {
        $type = 'arraydata';       
        $sql = "select * from ".PREF."views_menu_data ORDER BY `position`";
        $result =  $this->driver->query($sql, $type); 
        return $result;  
}

public function getMenuid ($id) {
    $type = 'arraydata';
    $sql = "select id_menu from ".PREF."views_role_menu where id_role=:id_role";
        $data_array=array(
                    'id_role'  => $id
                );     
        $result =  $this->driver->query($sql, $type, $data_array); 
        return $result;  
}
  
/*--------------------------------------------------PERMISSIONS-----------------------------------------------------*/
 
public function getRolePermisions () {
        $type = 'arraydata';       
        $sql = "SELECT * FROM `cisco_users_role` "
            . " LEFT JOIN cisco_role_permissions ON cisco_users_role.id = cisco_role_permissions.id_role "
            . " LEFT JOIN cisco_permissions  ON cisco_permissions.id = cisco_role_permissions.id_permissions "; 
        $result =  $this->driver->query($sql, $type); 
        return $result;  
}   
 /*--------------------------------------------------POINTS-----------------------------------------------------*/ 

// Получение сохраненных в базе адресов
 public function getAddressForSelect () {
        $type = 'arraydata';       
        $sql = "SELECT * FROM `".PREF."point_address`"; 
        $result =  $this->driver->query($sql, $type); 
        return $result;  
 }
 
 //Получение организаций сохраненных в БД
 public function getBusinessForSelect () {
     $type = 'arraydata'; 
     $sql = "SELECT * FROM `".PREF."business`";
     $result = $this->driver->query($sql, $type);
     return $result;
 }
 
 //Получение используемых моделей точек Cisco 
 public function getModelCiscoForSelect () {
     $type = 'arraydata'; 
     $sql = "SELECT * FROM `".PREF."points_model`";
     $result = $this->driver->query($sql, $type);
     return $result;
 }
 //Получение Ssid из бд getSsidForSelect
 public function getSsidForSelect () {
     $type = 'arraydata'; 
     $sql = "SELECT * FROM `".PREF."point_ssid`";
     $result = $this->driver->query($sql, $type);
     return $result;
 }
 
 //Получение списка скоростей доступа к сети 
 public function getSpeedForSelect () {
     $type = 'arraydata'; 
     $sql = "SELECT * FROM `".PREF."point_speed`";
     $result = $this->driver->query($sql, $type);
     return $result;
 } 
 
 //Проверка наличия ip адреса точки в БД для формы добавления новой точки Чтобы не было дублей
 public function checkIpPoint ($ip) {
     $type ="count";
     $sql = "SELECT ip FROM `".PREF."point_data` where ip = :ip";
     $data_array=array(
                    'ip'  => $ip
                );    
     $result =  $this->driver->query($sql, $type, $data_array); 
     return $result;  
 }
 
 
 
 
//Проверить наличие органиции в бд
 public function getBusines ($name) {
     $type = "arraydata";
     $sql = "SELECT `id` FROM `".PREF."business` WHERE name =:name";
     $data_array = array (
         'name' => $name
     );
     $result =  $this->driver->query($sql, $type, $data_array); 
     return $result;  
 }
 
 public function getBusinesForId ($id) {
     $type ="count";
     $sql = "SELECT * FROM `".PREF."business` WHERE id =:id";
     $data_array=array(
                    'id'  => $id
                );    
     $result =  $this->driver->query($sql, $type, $data_array); 
     return $result;  
 }
 
//Добавить новую организацию в бд
 public function addBusines ($name) {
     $type = "insert";
     $sql = "INSERT INTO `".PREF."business` SET `name` =:name";
        $data_array = array(
            'name' => $name
        );
     $result =  $this->driver->query($sql, $type, $data_array); 
     return $result;  
    }

//Проверить наличие ssid в бд
 public function getSsid ($name) {
     $type = "arraydata";
     $sql = "SELECT `id` FROM `".PREF."point_ssid` WHERE `ssid` =:name";
     $data_array = array (
         'name' => $name
     );
     $result =  $this->driver->query($sql, $type, $data_array); 
     return $result;  
 }
 
 public function getSsidForId($id) {
     $type = "arraydata";
     $sql = "SELECT * FROM `".PREF."point_ssid` WHERE `id` =:id";
     $data_array = array (
         'id' => $id
     );
     $result =  $this->driver->query($sql, $type, $data_array); 
     return $result;  
 }
 
 //Добавить новую ssid в бд
 public function addSsid($name) {
     $type = "insert";
     $sql = "INSERT INTO `".PREF."point_ssid` SET `ssid` =:name";
        $data_array = array(
            'name' => $name
        );
     $result =  $this->driver->query($sql, $type, $data_array); 
     return $result;  
    }  
    
  //Проверить наличие адреса в бд
 public function getAddress ($name) {
     $type = "arraydata";
     $sql = "SELECT `id` FROM `".PREF."point_address` WHERE `address` =:name";
     $data_array = array (
         'name' => $name
     );
     $result =  $this->driver->query($sql, $type, $data_array); 
     return $result;  
 } 
 //Добавить новый адрес в БД
 public function addAddress($name) {
     $type = "insert";
     $sql = "INSERT INTO `".PREF."point_address` SET `address` =:name";
        $data_array = array(
            'name' => $name
        );
     $result =  $this->driver->query($sql, $type, $data_array); 
     return $result;  
    } 
    
  //Добавление данных точки в БД 
    public function adddatapointBd (array $data)
    {
        $type = "insert";
        $sql = "INSERT INTO `" . PREF . "point_data` (ip, latitude, longitude, id_address, id_business, notice, set_place, "
            . "speed_download, speed_upload, id_ssid, type, id_model, mac, installation_date) values (:ip, :latitude, :longitude, "
            . ":id_address, :id_business, :notice, :set_place, "
            . ":speed_download, :speed_upload, :id_ssid, :type, :id_model, :mac, :installation_date)";
        $data_array = array(
            'ip' => $data['ip'],
            'latitude' => $data['latitude'],
            'longitude' => $data['longitude'],
            'id_address' => $data['id_address'],
            'id_business' => $data['id_business'],
            'notice' => $data['notice'],
            'set_place' => $data['set_place'],
            'speed_download' => $data['speed_download'],
            'speed_upload' => $data['speed_upload'],
            'id_ssid' => $data['id_ssid'],
            'type' => $data['type'],
            'id_model' => $data['id_model'],
            'mac' => $data['mac'],
            'installation_date' => $data['installation_date']

        );
        $result = $this->driver->query($sql, $type, $data_array);
        return $result;
    }

//Удаление точки из БД
    public function deletePoint($id){
         $type = 'count';
         $sql = "DELETE FROM `".PREF."point_data` WHERE `id` = :id";
            $data_array = array (
                'id' => $id
            );
        $result =  $this->driver->query($sql, $type, $data_array);
        return $result;
    }
    
//Проверка наличие точки с указаным id в БД
    public function checkPoint ($id) {
        $type = "arraydata";
        $sql = "SELECT `id` FROM `".PREF."point_data` WHERE `id` =:id";
            $data_array = array (
             'id' => $id
            );
     $result =  $this->driver->query($sql, $type, $data_array); 
     return $result;  
    }
    
   //Получение всех данных точки из БД по id
    public function getDataPointId($id) {
        $type = "arraydata";
        $sql = "SELECT `".PREF."point_data`.`id`, INET_NTOA(`".PREF."point_data`.`ip`) as ip, `".PREF."point_data`.`latitude`, `".PREF."point_data`.`longitude`,"
            . "`".PREF."point_data`.`notice`, `".PREF."point_data`.`set_place`,"
            . "`".PREF."point_data`.`speed_download`, `".PREF."point_data`.`speed_upload`, `".PREF."point_data`.`type`, `".PREF."point_data`.`mac`, "
            . "`".PREF."point_data`.`installation_date`, `".PREF."point_address`.`address`, `".PREF."point_ssid`.`ssid`, `".PREF."points_model`.`model`, "
            . "`".PREF."business`.`name`" 
                . "FROM `".PREF."point_data` "
                    ."LEFT JOIN `".PREF."point_address` ON `".PREF."point_data`.`id_address` = `".PREF."point_address`.`id` "
                    ."LEFT JOIN `".PREF."business` ON `".PREF."business`.`id` =`".PREF."point_data`.`id_business`"
                    ."LEFT JOIN `".PREF."point_ssid` ON `cisco_point_ssid`.`id` =`".PREF."point_data`.`id_ssid`"
                    ."LEFT JOIN `".PREF."points_model` on `".PREF."points_model`.`id` =  `".PREF."point_data`.`id_model`" 
                . " WHERE `".PREF."point_data`.`id`= :id";
            $data_array = array (
             'id' => $id
            );
     $result =  $this->driver->query($sql, $type, $data_array); 
     return $result;  
    }

    //Получение всех данных точки из БД
    public function getDataPoint() {
        $type = "arraydata";
        $sql = "SELECT `".PREF."point_data`.`id`, INET_NTOA(`".PREF."point_data`.`ip`) as ip, `".PREF."point_data`.`latitude`, `".PREF."point_data`.`longitude`,"
            . "`".PREF."point_data`.`notice`, `".PREF."point_data`.`set_place`,"
            . "`".PREF."point_data`.`speed_download`, `".PREF."point_data`.`speed_upload`, `".PREF."point_data`.`type`, `".PREF."point_data`.`mac`, "
            . "`".PREF."point_data`.`installation_date`, `".PREF."point_address`.`address`, `".PREF."point_ssid`.`ssid`, `".PREF."points_model`.`model`, "
            . "`".PREF."business`.`name`"
            . "FROM `".PREF."point_data` "
            ."LEFT JOIN `".PREF."point_address` ON `".PREF."point_data`.`id_address` = `".PREF."point_address`.`id` "
            ."LEFT JOIN `".PREF."business` ON `".PREF."business`.`id` =`".PREF."point_data`.`id_business`"
            ."LEFT JOIN `".PREF."point_ssid` ON `cisco_point_ssid`.`id` =`".PREF."point_data`.`id_ssid`"
            ."LEFT JOIN `".PREF."points_model` on `".PREF."points_model`.`id` =  `".PREF."point_data`.`id_model`"
            ."ORDER BY `installation_date` DESC";

        $result =  $this->driver->query($sql, $type);
        return $result;
    }

    //Редактирование данных точки wifi в БД
    public function editdatapointBd (array $data) {
     $type = "count";
        $sql = "UPDATE `".PREF."point_data` set `ip` = :ip, `latitude` = :latitude, `longitude` = :longitude ,"
            . "`notice` = :notice, `set_place`= :set_place, `id_address` = :id_address, `id_business` = :id_business,"
            ." `speed_download` = :speed_download, `speed_upload` =:speed_upload, `id_ssid` =:id_ssid,"
            ."`type`=:type, `id_model`=:id_model, `mac`=:mac, `installation_date`= :installation_date"
            . " WHERE `".PREF."point_data`.`id`= :id";
        $data_array = array(
            'id' => $data['id'],
            'ip' => $data['ip'],
            'latitude' => $data['latitude'],
            'longitude' => $data['longitude'],
            'id_address' => $data['id_address'],
            'id_business' => $data['id_business'],
            'notice' => $data['notice'],
            'set_place' => $data['set_place'],
            'speed_download' => $data['speed_download'],
            'speed_upload' => $data['speed_upload'],
            'id_ssid' => $data['id_ssid'],
            'type' => $data['type'],
            'id_model' => $data['id_model'],
            'mac' => $data['mac'],
            'installation_date' => $data['installation_date']
        );
        $result =  $this->driver->query($sql, $type, $data_array);
        return $result;
    }
    
 //ФУНКЦИИ ПОИСКА ПО БАЗЕ ДАННЫХ
/*------------------------------------------------------------------------------------------------------------*/  


        public function SearchData ($data) {
             $type = "arraydata";
                $sql = "SELECT `".PREF."point_data`.`id`, INET_NTOA(`".PREF."point_data`.`ip`) as ip, `".PREF."point_data`.`latitude`, `".PREF."point_data`.`longitude`,"
                    . "`".PREF."point_data`.`notice`, `".PREF."point_data`.`set_place`,"
                    . "`".PREF."point_data`.`speed_download`, `".PREF."point_data`.`speed_upload`, `".PREF."point_data`.`type`, `".PREF."point_data`.`mac`, "
                    . "`".PREF."point_data`.`installation_date`, `".PREF."point_address`.`address`, `".PREF."point_ssid`.`ssid`, `".PREF."points_model`.`model`, "
                    . "`".PREF."business`.`name`"
                    . "FROM `".PREF."point_data` "
                    ."LEFT JOIN `".PREF."point_address` ON `".PREF."point_data`.`id_address` = `".PREF."point_address`.`id` "
                    ."LEFT JOIN `".PREF."business` ON `".PREF."business`.`id` =`".PREF."point_data`.`id_business`"
                    ."LEFT JOIN `".PREF."point_ssid` ON `cisco_point_ssid`.`id` =`".PREF."point_data`.`id_ssid`"
                    ."LEFT JOIN `".PREF."points_model` on `".PREF."points_model`.`id` =  `".PREF."point_data`.`id_model`"
                    ."WHERE `".PREF."point_data`.`ip` LIKE :term ORDER BY `installation_date` DESC";

                $data_array = [
                    'term' => $data
                ];
                $result =  $this->driver->query($sql, $type, $data_array);
                return $result;
        }

        //Получение всех организаций и количесвто установленных точек для каждой
        public function getOrganizations () {
            $type = "arraydata";
            $sql =  "SELECT `".PREF."business`.`id`, `".PREF."business`.`name`, "
            ." (SELECT COUNT(*) FROM `".PREF."point_data` WHERE `".PREF."point_data`.`id_business` = `".PREF."business`.`id`) as point  "
            ." FROM `".PREF."business` ORDER BY point DESC";
            $result =  $this->driver->query($sql, $type);
            return $result;
        }






/*------------------------------------------------------------------------------------------------------------*/     
    
    
 }

