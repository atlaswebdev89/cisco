<?php


namespace Controller;


class BussinessControllerShowAll extends BussinessController
{
    public function execute ($request, $response, $args) {
        echo "Controller Good"; exit;

        return $this->display($request, $response, $args);
    }

    protected function display($request, $response, $args) {

        $this->mainbar = $this->mainBar();
        parent::display($request, $response, $args);
    }


    //Получение главного блока данных точек доступа
    protected function mainBar () {
        return $this->view->fetch('template_bussiness_showAll.php',
            [
                'point'                      => $this->dataRequest,
                'uri'                       => '/point/page/',
                'show_block_admin'          => $this->showBlockadmin,
                'show_block_moderator'      => $this->showBlockmoderator,
                'message'                   => $this->messageEmpty
            ]);
    }
}