<?php


namespace App\controllers;

use App\services\Request;

class AuthController extends Controller
{
    protected $login;
    protected $password;

    protected $defaultAction = 'auth';

    protected function authAction()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (empty($_POST['login']) || empty($_POST['password'])) {
                header('location: ' . $_SERVER['HTTP_REFERER']);
                return false;
            }
            $this->login = $_POST['login'];
            $this->password = $_POST['password'];

            $sql = "SELECT id, name,login, password FROM users WHERE login = '$this->login'";
            $row = $this->app->db->find($sql);

            $_SESSION['user'] = $row['name'];

            if (empty($row)) {
                header('location: ' . $_SERVER['HTTP_REFERER']);
                return false;
            }

            if ($this->password == $row['password']) {
               $_SESSION['auth'] = true;
               $this->sessionAuth = $_SESSION['auth'];
            }
            header('location: ' . $_SERVER['HTTP_REFERER']);
        }
//        if ( !$_SESSION['auth'] == true )
//        {
//            return $this->render(
//                'auth',
//                [
//                    'sessionAuth' => $_SESSION['auth'],
//                    'menu' => $this->getMenu(),
//                ]
//            );
//        }

        return $this->render(
            'auth',
            [
                'sessionAuth' => $_SESSION['auth'],
                'user'=> $_SESSION['user'],
                'exit' => $this->userExit(),
                'menu' => $this->getMenu(),
            ]
        );
    }
// вынес в контроллер
//    protected function userExit()
//    {
//        if (!empty($_GET['exit'])) {
//            session_destroy();
//            header('location: /' );
//        }
//    }
}