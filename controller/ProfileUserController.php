<?php


namespace Controller;


class ProfileUserController extends DisplayController
{
    protected $UserData;
    
    
    
    public function execute ($request, $response, $args) {
        return $this->display($request, $response, $args);
    }

    protected function getGallery() {
        return true;
    }

    public function display($request, $response, $args)
    {
        $this->title .= "UserProfileEdit";
        $this->header = "Редактирования данных профиля";
        $this->UserData = $this->container->users->UsersDataForEdit($request, $this->session['user_id']);
        $this->page_script = $this->getScripts();

        $this->mainbar = $this->mainBar();
        parent::display($request, $response, $args);
    }

    //Получение главного блока данных точки доступа
    protected function mainBar () {
        return $this->view->fetch('template_profile_page.php',[
            'nameUser'                      => $this->UserData['name'],
            'secondnameUser'                => $this->UserData['secondname'],
            'phone'                         => $this->UserData['phone'],
            'JobsDepartment'                => $this->UserData['JobsDepartment'],
            'session'                       => $this->session,
            'header'                        => $this->header
            
        ]);
    }
    //Получить необходимые скрипы для отображения страницы
    protected function getScripts () {
        return [         
            '/js/bootstrap-formhelpers.min.js'
        ];
    }
}


