<?php
include "./system.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" constent="width=device-width, initial-scale=1.0">
    <link rel="icon" href="images/Brown Circle Floral Photography Logo.png ">
    <title>Coffee N' Cravings</title>

    <link rel="stylesheet" href="./assets/css/styles.css">
</head>

<body>
    <div class="main-content">
        <div class="main-container">
            <div class="flex-content">
                <div class="buttons-content">
                    <div class="buttons-container">


                        <a href="./cashier.php" class="text-button">
                            <div class="icon">
                            <div class="text">
                            <?php echo UseIcon("cashier") ?>
                                <span>CASHIER</span>
                            </div>
                            </div>
                        </a>


                        <a href="./products.php" class="text-button">
                            <div class="icon">
                            <div class="text">
                            <?php echo UseIcon("products") ?>
                                <span>PRODUCTS</span>
                            </div>
                            </div>
                        </a>


                        <a href="./members.php" class="text-button">
                            <div class="icon">
                            <div class="text">
                            <?php echo UseIcon("members") ?>
                                <span>MEMBERS</span>
                            </div>
                            </div>    
                        </a>


                        <a href="./orders.php" class="text-button">
                            <div class="icon">
                            <div class="text">
                            <?php echo UseIcon("orders") ?>
                                <span>ORDERS</span>
                            </div>
                            </div>  
                        </a>


                        <a href="./sales_report_information.php" class="text-button">
                            <div class="icon">
                            <div class="text">
                            <?php echo UseIcon("reports") ?>
                                <span>REPORTS</span>
                            </div>
                            </div>
                        </a>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>