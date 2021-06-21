<?php
define('DB_SERVER','sql307.epizy.com');
define('DB_USER','epiz_28666528');
define('DB_PASS' ,'SDOgCE90oTupr7');
define('DB_NAME', 'epiz_28666528_steven_Database');
$conn_to_steven = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>