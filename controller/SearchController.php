<?php


namespace Controller;


class SearchController extends DisplayController
{
    protected $dataRequest = 0;
    protected $messageEmpty;


    public function execute ($request, $response, $args) {
            //Получение POST запроса при поиске точки
            if ($request->isPost()) { 
                    //Получение строки введенной в поиск пользователем
                    $posts_data = $request->getParsedBody();         
                        if($result = $this->searchDatainBD($posts_data)){
                            $this->dataRequest = $result;                       
                        }; 
            }  
        return $this->display($request, $response, $args);
    }
    protected function display($request, $response, $args) {
        
        
        //Формирование разрешения для отображения блоков в зависимости от роли
        $this->getBlockShowRole();
        $this->title .= "Search";
        $this->mainbar = $this->mainBar();
        parent::display($request, $response, $args);
    }
    protected function getGallery() {
        return true;

    }

    //Получение главного блока данных точек доступа
    protected function mainBar () {
        return $this->view->fetch('template_search_page.php',
                [
                        'point'                      => $this->dataRequest,
                        'uri'                       => '/point/page/',
                        'show_block_admin'          => $this->showBlockadmin,
                        'show_block_moderator'      => $this->showBlockmoderator,
                        'message'                   => $this->messageEmpty
                ]);
    }
    
    protected function searchDatainBD ($data) {
        $request = $data['searchRequest'];
        $request = $this->clear_str($request);
        $array = array ();
        //Получаем все точки в бд
        $DataReturn = $this->model->getDataPoint();
        
        //Проверяем совпадения строки запроса с полем ip 
        foreach ($DataReturn as $item) {
            if (strpos($item['ip'], $request) !== FALSE) {
                $array[] = $item;
            }
        }
       
        //Проверяем полученные данные
        if ($array) {
            return $array;
        }else {
            $this->messageEmpty = "Нет совпадений";
            return FALSE;
        }
        
    }
}