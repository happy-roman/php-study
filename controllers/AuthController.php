<?php


namespace App\controllers;

use App\services\Request;

class AuthController extends Controller
{
    protected $login;
    protected $password;
    protected $location;

    protected function authAction()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (empty($_POST['login']) || empty($_POST['password'])) {
                header('location: ' . $_SERVER['HTTP_REFERER']);
                return false;
            }
            $this->login = $_POST['login'];
            $this->password = $_POST['password'];

            $sql = "SELECT id, login, password FROM users WHERE login = '$this->login'";
            $row = $this->app->db->find($sql);

            if (empty($row)) {
                header('location: ' . $_SERVER['HTTP_REFERER']);
                return false;
            }

            if ($this->password == $row['password']) {
//                session_start();
                $_SESSION['auth'] = true;
            }
            header('location: ' . $_SERVER['HTTP_REFERER']);
        }

        if (!empty($_GET['exit'])) {
            session_destroy();
            header('location: ' . $_SERVER['HTTP_REFERER']);
        }
        var_dump($_SESSION);
        return $this->render(
            'auth',
            [
//                ?????????????????
                'menu' => $this->getMenu(),
            ]
        );
    }

}