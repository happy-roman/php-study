<?php


namespace App\controllers;
use App\entities\Good;
use App\repositories\GoodRepository;

class BasketController extends Controller
{
    protected $defaultAction = 'myBasket';

    public function addAction()
    {
        $request = $this->app->request;

        /**@var GoodRepository $goodRepository*/

        $goodRepository = $this->getRepository('Good');
        $hasAdd = $this->app->basketServices->add($request, $goodRepository);

        if (!$hasAdd) {
            return $this->render('404');
        }

        $request->redirectApp('Товар добавлен в корзину');
        return '';
    }

    public function myBasketAction()
    {
        var_dump($_SESSION);
    }


}