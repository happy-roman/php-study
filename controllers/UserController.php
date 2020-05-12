<?php

namespace App\controllers;

use App\entities\User;
use App\repositories\UserRepository;

class UserController extends Controller
{
    public function oneAction()
    {
        $id = 0;
        if (!empty($_GET['id'])) {
            $id = (int)$_GET['id'];
        }

        $user = $this->getRepository('User')->getOne($id);

        return $this->render(
            'userOne',
            [
                'user' => $user,
                'menu' => $this->getMenu(),
            ]
        );
    }

    public function allAction()
    {
        $users = $this->getRepository('User')->getAll();
        return $this->render(
            'userAll',
            [
                'users' => $users,
                'title' => 'Все пользователи',
                'menu'=> $this->getMenu()
            ]
        );
    }

    public function insertAction()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $user = new User();
            $user->name = $_POST['name'];
            $user->login = $_POST['login'];
            $user->password = $_POST['password'];

            $this->getRepository('User')->save($user);
            header('Location: /user/all' );
            return '';
        }
        return $this->render(
            'userAdd',
            [
                'menu' => $this->getMenu(),
            ]
        );
    }
}