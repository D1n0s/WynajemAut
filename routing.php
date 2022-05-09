<?php

use core\App;
use core\Utils;

App::getRouter()->setDefaultRoute('hello'); #default action
App::getRouter()->setLoginRoute('login'); 

Utils::addRoute('hello', 'HelloCtrl');
Utils::addRoute('loginShow',     'LoginCtrl');
Utils::addRoute('login',         'LoginCtrl');
Utils::addRoute('logout',        'LoginCtrl');
Utils::addRoute('UserPanelShow',     'UserCtrl',	['user','admin']);
//Utils::addRoute('action_name', 'controller_class_name');