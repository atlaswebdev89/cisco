<?php

namespace Wifi;

class Router {
   
   protected $app;
   protected $container;
   
   public function __construct($app) {
       $this->app = $app;
    }
    
   public function createRoutes() {
        
        //Группа маршрутов для пользовательской части
         $this->app->group('', function () {
                $this->get('/', '\Controller\IndexController:execute')->setName('home');
                $this->get('/info[/]', '\Controller\IndexController:execute') ->setName('info');
                $this->get('/denied[/]',  '\Controller\DeniedController:execute')->setName('denied');
                //Группа маршрутов для точек доступа
                $this->group('/point', function () {
                   $this->get('[/[page/{id}[/]]]',                  '\Controller\PointControllerShowAll:execute')   ->setName('points');
                   $this->get('/show/id/{id}',                      '\Controller\PointControllerShow:execute')      ->setName('show_point');
                   $this->post('/delete[/]',                        '\Controller\PointControllerDelete:execute')    ->setName('delete_point');
                   $this->post('/checkIpPoint[/]',                  '\Controller\PointControllerCheck:execute')     ->setName('check_point');
                   $this->map(['GET', 'POST'], '/add[/]',           '\Controller\PointControllerAdd:execute')       ->setName('add_point');
                   $this->get('/edit/id/{id}',                      '\Controller\PointControllerEdit:execute')      ->setName('edit_point_show');
                   $this->post('/edit[/]',                          '\Controller\PointControllerEdit:edit')         ->setName('edit_point');

                });
                $this->group('/console', function () {
                    $this->get('[/]',                        '\Controller\ConsoleController:execute')  ->setName('points'); 
                    $this->get('/show[/]',                   '\Controller\ConsoleController:execute')  ->setName('show_points'); 
                });
         })->add('Wifi\Middleware:AuthLogin');

         $this->app->map(['GET', 'POST'], '/login[/]', '\Controller\LoginController:execute')->setName('login');


            
            
            
//        $this->app->get('/admin', '\Controller\AdminController:execute')->setName('admin')->add('\Atlas\Middleware:AuthLogin');
//        $this->app->get('/admin/onlineusers', '\Controller\UsersController:execute')->setName('users')->add('\Atlas\Middleware:AuthLogin');
//        $this->app->map(['GET', 'POST'], '/login', '\Controller\LoginController:execute')->setName('login');  
//        $this->app->get('/env', function ($request, $response, $args){
//            echo '<pre>';
//            var_dump($this->environment);
//            echo \Wifi\TimePage::finish_time();
//                    
//              echo '</pre>';
//        })->setName('env');
        
        
//  Группа маршрутов для Admin панели
//        $this->app->group('/admin', function () {
//           $this->get('/',  '\Atlas\CallbackRouters:home');
//               $this->group('/views', function (){
//                    $this->get('/', '\Atlas\CallbackRouters:home');
//        });    
//    });
    }
}
