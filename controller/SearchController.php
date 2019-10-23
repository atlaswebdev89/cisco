<?php


namespace Controller;


class SearchController extends DisplayController
{
    protected $dataRequest = 0;
    protected $messageEmpty;



    public function execute ($request, $response, $args) {
        //Защита от повторной отправки данных формы при обновлении страницы (при получении данных делаем редирект на страницу поиска)
            //Получение POST запроса при поиске точки
            if ($request->isPost()) {
                //Получение строки введенной в поиск пользователем
                    $posts_data = $request->getParsedBody();
                    $_SESSION['requestDataSearch'] = $posts_data['searchRequest'];
                return $response->withRedirect($uri = $request->getUri()->getpath());
            }

            if ($this->session['requestDataSearch']) {
                if ($result = $this->searchDatainBD($this->session['requestDataSearch'])) {
                    $this->dataRequest = $result;
                }
            }
        return $this->display($request, $response, $args);
    }
    protected function display($request, $response, $args) {
        //Формирование разрешения для отображения блоков в зависимости от роли
        $this->getBlockShowRole();
        //Подключение необходимых скриптов
        $this->page_script = $this->getScripts();

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

    //Получить необходимые скрипы для отображения страницы
    protected function getScripts () {
        return [
            '/js/point-del.js'
        ];
    }
    
    protected function searchDatainBD ($data) {
        $request = $this->clear_str($data);
        $array = array ();
        //Получаем все точки в бд
        $DataReturn = $this->model->getDataPoint();
        
        //Проверяем совпадения строки запроса с полем ip 
        foreach ($DataReturn as $item) {
            if (stripos($item['ip'], $request) !== FALSE) {
                $array[] = $item;
            }
        }

        //Проверяем полученные данные
        if ($array) {
            return $array;
        }else {
            //Проверяем совпадения строки запроса с полем name
            foreach ($DataReturn as $item) {
                if (mb_stripos ($item['name'], $request) !== FALSE) {
                   // echo "GOOD"; exit;
                    $array[] = $item;
                }
            }

        }
        if ($array) {
            return $array;
        }

        
    }
}