<?php

namespace App\controllers;

use App\entities\Good;
use App\repositories\GoodRepository;

class GoodController extends Controller
{
    protected $defaultGoodsCount = 25;

    public function oneAction()
    {
        $id = 0;
        if (!empty($_GET['id'])) {
            $id = (int)$_GET['id'];
        }

        $good = $this->getRepository('Good')->getOne($id);

        return $this->render(
            'goodOne',
            [
                'good' => $good,
                'menu' => $this->getMenu(),
            ]
        );
    }

    public function allAction()
    {
        $goods = $this->getRepository('Good')->getAll($this->addGoodList());

        return $this->render(
            'goodAll',
            [
                'goods' => $goods,
                'title' => 'Все товары',
                'menu' => $this->getMenu(),
            ]
        );
    }
    protected function addGoodList()
    {
        if ($_GET['more'] == "Показать еще")
        {
            $this->defaultGoodsCount += 25;
        }
        return "WHERE id > 0 LIMIT 0, $this->defaultGoodsCount";
    }

    public function insertAction()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $good = new Good();
            $good->name = $_POST['name'];
            $good->info = $_POST['info'];
            $good->price = $_POST['price'];

            $this->getRepository('Good')->save($good);
            header('Location: /good/all' );
            return '';
        }

        return $this->render(
            'goodAdd',
            [
                'menu' => $this->getMenu(),
            ]
        );
    }
}