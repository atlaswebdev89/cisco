<?php


namespace Controller;


class BussinessController
{
    public function execute ($request, $response, $args) {


        return $this->display($request, $response, $args);
    }

    protected function display($request, $response, $args) {

        $this->mainbar = $this->mainBar($this->template);
        parent::display($request, $response, $args);
    }
    protected function getGallery() {
        return true;
    }

    //Получение главного блока данных точек доступа
    protected function mainBar ($template) {
        return $this->view->fetch($template,
            [
                'point'                      => $this->dataRequest,
                'uri'                       => '/point/page/',
                'show_block_admin'          => $this->showBlockadmin,
                'show_block_moderator'      => $this->showBlockmoderator,
                'message'                   => $this->messageEmpty
            ]);
    }
}