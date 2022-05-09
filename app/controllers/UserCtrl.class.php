<?php

namespace app\controllers;

use core\App;
use core\Utils;
use core\RoleUtils;
use core\ParamUtils;
use app\forms\LoginForm;

class UserCtrl {

    private $form;

    public function action_UserPanelShow() {
        $this->generateView();
    }


    public function generateView() {
        App::getSmarty()->assign('form', $this->form); // dane formularza do widoku
        App::getSmarty()->display('UserPanel.tpl');
    }

}
