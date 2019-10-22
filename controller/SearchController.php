<?php


namespace Controller;


class SearchController extends DisplayController
{
    public function execute ($request, $response, $args) {
        return $this->display($request, $response, $args);
    }
    protected function display($request, $response, $args) {
        $this->title .= "Search";
        $this->mainbar = $this->mainBar();
        parent::display($request, $response, $args);
    }
    protected function getGallery() {
        return true;

    }

    //Получение главного блока данных точек доступа
    protected function mainBar () {
        return $this->view->fetch('template_search_page.php');
    }
}