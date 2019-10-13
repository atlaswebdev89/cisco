<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Wifi;


class Users {
    
    protected $model;

    public function __construct($model) {
        $this->model=$model;

    }
    
    public function AllUserData ($request, $id) {
        //long2ip() — для обратного преобразования числа в IP адрес.
            $AllDataUser = $this->model->getDataUser($id);
            $AllDataUser = $AllDataUser[0]; 
            return array (
                            'id'          =>       $AllDataUser['id'],           
                            'name'        =>       $AllDataUser['name'],
                            'secondname'  =>       $AllDataUser['secondname'],
                            'role_alias'  =>       $AllDataUser['role'],
                            'role'        =>       $AllDataUser['alias_name'],
                            'checkIP'     =>       $AllDataUser['checkIP'],
                            'checkAgent'  =>       $AllDataUser['checkAgent'],
                            'sessionTime' =>       $AllDataUser['sessionTime'],
                            'phone'       =>       $AllDataUser['phone'],
                            'ipAddress'   =>       $request->getServerParam('REMOTE_ADDR'),
                            'user_agent'  =>       $request->getServerParam('HTTP_USER_AGENT'),
                            'sess'        =>       md5(microtime()),
                            'timelogin'   =>       time(), 
                            'menu'        =>       $this->id_menu($AllDataUser['id_role']) 
                         );       
    }
    

    public function getNameUser ($id) {
                $AllDataUser = $this->model->getDataUser($id);
                $this->name = $AllDataUser[0]['name']; 
            return $this->name;
    }
    
    public function id_menu($id_role){
        $data = $this->model->getMenuid($id_role);
        foreach ($data as $item){
                $array[] = $item['id_menu'];
            }
        return $array ;  
    }
}
