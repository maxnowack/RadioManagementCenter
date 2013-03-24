<?php
	define("RMC_DB_VERSION","0.1");	
	
	function rmc_install () {
		global $wpdb;
		
		$rmc_sql = array(
			'schedule' =>
				"CREATE TABLE %TBL_NAME% (
					id mediumint(9) NOT NULL AUTO_INCREMENT,
					user_id mediumint(9) NOT NULL,
					name VARCHAR(55) NOT NULL,
					description text NOT NULL,
					year mediumint(9) NOT NULL,
					week mediumint(9) NOT NULL,
					day mediumint(9) NOT NULL,
					start mediumint(9) NOT NULL,
					duration mediumint(9) NOT NULL,
					UNIQUE KEY id (id)
				);",
				
			'applications' =>
				"CREATE TABLE %TBL_NAME% (
					id mediumint(9) NOT NULL AUTO_INCREMENT,
					time datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
					name tinytext NOT NULL,
					text text NOT NULL,
					url VARCHAR(55) DEFAULT '' NOT NULL,
					UNIQUE KEY id (id)
				);",
				
			'wishandgreet' =>
				"CREATE TABLE %TBL_NAME% (
					id mediumint(9) NOT NULL AUTO_INCREMENT,
					name VARCHAR(55) NOT NULL,
					age mediumint(9) NOT NULL,
					town VARCHAR(55) NOT NULL,
					message text NOT NULL,
					send_time datetime NOT NULL,
					ip VARCHAR(15) NOT NULL,
					done tinyint(1) NOT NULL,
					show_id mediumint(9) NOT NULL,
					UNIQUE KEY id (id)
				);"
		);
		
		require_once(ABSPATH.'wp-admin/includes/upgrade.php');
		
		if(get_option("rmc_db_version")===false) add_option("rmc_db_version", "0.0");
		$installed_ver = get_option("rmc_db_version");
		
		$updated = false;
		foreach($rmc_sql as $tbl => $sql)
		{
			$table_name = $wpdb->prefix."rmc_".$tbl;
			if(!table_exists($table_name) || $installed_ver != RMC_DB_VERSION) {
				dbDelta(str_replace("%TBL_NAME%",$table_name,$sql));
				$updated = true;
			}
		}
		if($updated) update_option("rmc_db_version", RMC_DB_VERSION);
	}
	
	register_activation_hook(RMC_PLUGIN_FILE,'rmc_install');
?>