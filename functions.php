<?php
	function table_exists($tblname)
	{
		global $wpdb;
		if($wpdb->get_var("SHOW TABLES LIKE '$tblname'") != $tblname)
			return false;
		else
			return true;
	}
?>