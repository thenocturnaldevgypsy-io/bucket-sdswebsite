<?php 
	//for localhost configuration
	mysql_connect("localhost","root","password") or die ("Connection failed");
	mysql_select_db("strato_inhouse_officialweb") or die ("Cannot find the Database");
	
	//for online configuration
	//mysql_connect("localhost","usrstratomain","P@ssword321") or die("Connection failed.");
	//mysql_select_db("sds_official") or die("Cannot find the Database");
?>