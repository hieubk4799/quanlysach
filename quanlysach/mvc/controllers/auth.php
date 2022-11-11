<?php

/**
 * Class Auth
 */
class Auth extends AuthController
{
    /**
     * @inheritDoc
     */
    public function execute()
    {
        $this->view('login', []);
    }

    /**
     * @return mixed
     */
    public function login()
    {
        $email = $_POST['email'] ?: '';
        $password = $_POST['password'] ?: '';

        $model = $this->model('AdminModel');
        $exists = $model->check($email, $password);

        if ($exists) {
            $this->addSuccessMessage('Đăng nhập thành công.');
            return $this->redirect('?url=book');
        } else {
            $this->addErrorMessage('Tài khoản/Mật khẩu không đúng.');
            return $this->redirect('?url=auth');
        }

    }

    /**
     * Logout
     */
    public function logout()
    {
        $this->redirect('?url=auth');
    }
}