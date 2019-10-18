<?php


namespace Controller;


class ProfileUserControllerPass extends DisplayController
{
    public function execute ($request, $response, $args) {
        return $this->display($request, $response, $args);
    }

    protected function getGallery() {
        return true;
    }

    public function display($request, $response, $args)
    {
        $this->title .= "ChangePassUser";
        $this->header = "Смена пароля";
        $this->UserData = $this->container->users->UsersDataForEdit($request, $this->session['user_id']);
        //print_r($this->UserData); print_r($this->session); exit;

        $this->mainbar = $this->mainBar();
        parent::display_login($request, $response, $args);
    }

    //Получение главного блока данных точки доступа
    protected function mainBar () {
        return $this->view->fetch('template_profile_pass_page.php',[
            'nameUser'                      => $this->UserData['name'],
            'secondnameUser'                => $this->UserData['secondname'],
            'phone'                         => $this->UserData['phone'],
            'JobsDepartment'                => $this->UserData['JobsDepartment'],
            'session'                       => $this->session,
            'header'                        => $this->header
        ]);
    }
}