<?php
include  "../../database.php";
include  "../../system.php";
include  "../../data.php";

$search = $_POST["search"];
$ORDERS = SearchOrders($search, null, $database);
echo CreateTable($ORDERSSTABLEHEADERTEXT, $ORDERSSTABLEBODYKEY, $ORDERS, "order_id", 9, true);