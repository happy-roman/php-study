<?php

namespace App\controllers;

use App\core\App;
use App\services\renderers\IRenderer;
use App\services\renderers\TwigRenderer;

abstract class Controller
{
    protected $defaultAction = 'all';

    /**
     * @var TwigRenderer
     */
    protected $renderer;
    /**
    * @var App
     */
    protected $app;

    public function __construct(IRenderer $renderer,App $app)
    {
        $this->renderer = $renderer;
        $this->app = $app;
    }

    public function run($actionName)
    {
        $action = $this->defaultAction;
        if (!empty($actionName)) {
            $action = $actionName;
            if (!method_exists($this, $action . 'Action')) {
                $action = $this->defaultAction;
            }
        }
        $action .= 'Action';
        return $this->$action();
    }

    protected function render($template, $params)
    {
        return $this->renderer->render($template, $params);

    }


    protected function getRepository($repositoryName)
    {
        return $this->app->db->getRepository($repositoryName);
    }

    protected function getMenu()
    {
        return [
            [
                'name'=>'Sign In',
                'href'=>'/auth/auth'
            ],
            [
                'name'=> 'Sign Up',
                'href'=> '/user/insert',
            ],
            [
                'name'=> 'Goods',
                'href'=> '/good/all',
            ],
            [
                'name'=> 'My Basket',
                'href'=> '/basket',
            ]
        ];
    }
}