<?php
/** MENU **/
function rmc_menu(){}
function rmc_settings_menu(){include("templates/admin/settings.php");}
function rmc_schedule_menu(){include("templates/admin/schedule.php");}
function rmc_wishandgreet_menu(){include("templates/admin/wishandgreet.php");}
//function rmc_applications_menu(){include("templates/admin/applications.php");}


/** MENU HOOK **/
function rmcAddMenu() {
  add_menu_page('Radio Management Center', 'RMC', 99, 'radio-management-center', '','',41);
  add_submenu_page('radio-management-center', 'Einstellungen', 'Einstellungen', 10, 'rmc_settings', 'rmc_settings_menu');
  add_submenu_page('radio-management-center', 'Sendeplan', 'Sendeplan', 10, 'rmc_schedule', 'rmc_schedule_menu');
  add_submenu_page('radio-management-center', 'W&uuml;nsche und Gr&uuml;&szlig;e', 'W&uuml;nsche und Gr&uuml;&szlig;e', 10, 'rmc_wishandgreet', 'rmc_wishandgreet_menu');
//  add_submenu_page('radio-management-center', 'Bewerbungen', 'Bewerbungen', 10, 'rmc_applications', 'rmc_applications_menu');
}
?>