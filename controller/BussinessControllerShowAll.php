<?php


namespace Controller;


class BussinessControllerShowAll extends BussinessController
{
    public function execute ($request, $response, $args) {
        echo "Controller Good"; exit;

        return $this->display($request, $response, $args);
    }
}