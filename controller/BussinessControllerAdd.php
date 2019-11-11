<?php

namespace Controller;

class BussinessControllerAdd extends BussinessController{
    public $message_error ='';
    public function execute ($request, $response, $args) {      
        if ($request->isPost()) {
                //Добавление данных организации в БД
                if($data = $this->addBussinessbd($request, $response, $args)) {
                    return $response->withRedirect('/bussiness');
                }else {  
                    $this->message_error = "Ошибка добавления. Попробуйте ещё раз";
                };
          }          
        return $this->display($request, $response, $args);
    }
    protected function display($request, $response, $args) {        
        $this->title .= 'NewBussiness';
        $this->mainbar = $this->mainBar();
        parent::display($request, $response, $args);
    }
    
     //Получение главного блока данных точек доступа
    protected function mainBar () {
        return $this->view->fetch('template_bussiness_add.php',
            [
                'message_error' =>$this->message_error
            ]
        );
    }
    
    protected function addBussinessbd($request, $response, $args) {
         $posts_data = $request->getParsedBody();
            //Очистка данных от всего лишнего
            foreach ($posts_data as &$data) {                
                $data = $this->clear_str($data);
            }           
            //Запрос в модель на добавление новой организации в БД
            if($idBuss = $this->model->addBus($posts_data)){
                 return $idBuss;
            }else {
                return FALSE;
            }           
    }
}
