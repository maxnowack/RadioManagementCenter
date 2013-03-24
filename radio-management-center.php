<?php
/*
Plugin Name: Radio Management Center
Plugin URI: http://www.plugins.xnowack.de/rmc
Description: Diverse Einstellungsm&ouml;glichkeiten f&uuml;r Internetradios (Sendeplan, W&uuml;nsche und Gr&uuml;&szlig;e und Bewerbungen).
Author: Max Nowack
Version: 0.1
Author URI: http://www.dasnov.de/
*/
define("RMC_PLUGIN_FILE",__FILE__);

require_once("functions.php");
require_once("hooks.php");
require_once("rmc_install.php");
add_action('admin_menu', 'rmcAddMenu');
?>
