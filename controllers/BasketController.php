<?php


namespace App\controllers;
use App\entities\Good;
use App\repositories\GoodRepository;
use App\services\Request;

class BasketController extends Controller
{
    protected $defaultAction = 'myBasket';
    protected $basket;

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
        $this->basket = $_SESSION['goods'];
        var_dump($this->basket);
        return $this->render(
            "basket",
            [
                'basket'=>$this->basket,
                'menu'=>$this->getMenu()
            ]
        );

    }
    public function addCountAction()
    {
        $this->addAction();
    }
    public function minusCountAction()
    {

        $request = $this->app->request;

        /**@var GoodRepository $goodRepository*/

        $goodRepository = $this->getRepository('Good');
        $hasAdd = $this->app->basketServices->remove($request, $goodRepository);

        if (!$hasAdd) {
            return $this->render('404');
        }

        $request->redirectApp('Товар добавлен в корзину');
        return '';
//
//        /**@var Request $request*/
//        $id = $request->getId();
//        $_SESSION['goods'][$id]['count']--;
//        header('location: ' . $_SERVER['HTTP_REFERER']);
//        return $this->render(
//            "basket",
//            [
//                'basket'=>$this->basket,
//                'menu'=>$this->getMenu()
//            ]
//        );

    }


}