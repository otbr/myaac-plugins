<?php
defined('MYAAC') or die('Direct access not allowed!');

use MyAAC\Plugins;

$template = 'tibiana';

require PLUGINS . "theme-$template/themes/$template/config.php";

Plugins::installMenus($template, require PLUGINS . "theme-$template/menus.php");
