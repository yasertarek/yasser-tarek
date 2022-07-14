<?php
session_start();
include_once "./includes/header.php";
// Store varities in session
?>

<div class="container">
    <div class="row">
        <div class="col-6 pt-5">
            <form class="form" method="POST" action="<?= $_SERVER['PHP_SELF'] . '?action=getInput' ?>">
                <h1 class="text-center heading-primary text-primary mb-5">Bank</h1>
                <div class="mb-4">
                    <label for="name" class="form-label mb-2">Name</label>
                    <input type="text" class="form-control form-outline" id="name" name="name" placeholder="Enter your name" required value="<?= $_POST['name'] ?? isset($_POST['name']) ?>" />
                </div>
                <div class="mb-4">
                    <label for="city" class="form-label mb-2">City</label>
                    <input type="text" class="form-control form-outline" id="city" name="city" placeholder="Enter your City" required value="<?= $_POST['city'] ?? isset($_POST['city']) ?>" />
                </div>
                <div class="mb-4">
                    <label for="varities" class="form-label mb-2">Number of Varities</label>
                    <input type="number" class="form-control form-outline" id="varities" name="varities" placeholder="Enter Number of Varities" required value="<?= $_POST['varities'] ?? isset($_POST['varities']) ?>" />
                </div>
                <button type="submit" class="btn btn-primary">Enter Products</button>
            </form>
            <?php
            // 
            if ($_SERVER['REQUEST_METHOD'] == 'POST' && $_GET['action'] == "getInput") {
                $_SESSION['varities'] = isset($_POST['varities']) ? $_POST['varities'] : 0;
                $_SESSION['name'] = isset($_POST['name']) ? $_POST['name'] : '';
                $_SESSION['city'] = isset($_POST['city']) ? $_POST['city'] : '';
            ?>
                <form class="form" method="POST" action="<?= $_SERVER['PHP_SELF'] . '?action=getReceipt' ?>">
                    <table class="table table-light mt-5">
                        <thead class="table-primary">
                            <th>Product Name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                        </thead>
                        <tbody>
                            <?php
                            for ($i = 0; $i < $_POST['varities']; $i++) {
                            ?>
                                <tr>
                                    <td><input required class="form-control form-outline" placeholder="Enter Product Name" type="text" name="prod<?= $i ?>" id="prod<?= $i ?>"></td>
                                    <td><input required class="form-control form-outline" placeholder="Enter Product Price" type="number" name="price<?= $i ?>" id="price<?= $i ?>"></td>
                                    <td><input required class="form-control form-outline" placeholder="Enter Product Quantity" type="number" name="quan<?= $i ?>" id="quan<?= $i ?>"></td>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                    <div class="d-grid"><button class="btn btn-primary">Reciept</button></div>
                </form>
            <?php
            } else if ($_SERVER['REQUEST_METHOD'] == 'POST' && $_GET['action'] == "getReceipt" && isset($_SESSION['name']) && isset($_SESSION['city'])) {
            ?>
                <div class="table-responsive mt-5">
                    <table class="table table-light">
                        <thead class="table-primary">
                            <th>Product Name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Sub Total</th>
                        </thead>
                        <tbody>
                            <?php
                            for ($i = 0; $i < $_SESSION['varities']; $i++) {
                            ?>
                                <tr>
                                    <td><?= $_POST["prod{$i}"] ?></td>
                                    <td><?= $_POST["price{$i}"] ?></td>
                                    <td><?= $_POST["quan{$i}"] ?></td>
                                    <td><?= $_POST["price{$i}"] * $_POST["quan{$i}"] ?></td>
                                </tr>
                            <?php
                            }
                            ?>
                            <tr>
                                <td>Client Name</td>
                                <td colspan=3><?= $_SESSION['name'] ?></td>
                            </tr>
                            <tr>
                                <td>City</td>
                                <td colspan=3><?= $_SESSION['city'] ?></td>
                            </tr>
                            <tr>
                                <td>Total</td>
                                <td colspan=3>
                                    <?php
                                    $total = (float)0;
                                    for ($i = 0; $i < $_SESSION['varities']; $i++) {
                                        global $total;
                                        $total += $_POST["price{$i}"] * $_POST["quan{$i}"];
                                    }
                                    echo $total;
                                    ?>
                                </td>
                            </tr>
                            <tr>
                                <td>Discount</td>
                                <?php
                                /* Check If Total < 1000 ,                   then discount = 0 
                                    Else if Total < 3000 AND Total >= 1000 , then discount = 10%
                                    Else if Total < 4500 AND Total >= 3000 , then discount = 15%
                                    Else if Total >= 4500 ,                  then discount = 20%
                                 */
                                $discount = 0;
                                $discountVal = 0;
                                switch ($total) {
                                    case $total >= 1000 && $total < 3000:
                                        $discount = 0.1;
                                        break;

                                    case $total >= 3000 && $total < 4500:
                                        $discount = 0.15;
                                        break;

                                    case $total >= 4500:
                                        $discount = 0.2;
                                        break;
                                    default:
                                        break;
                                }

                                if ($discount != 0) {
                                    $discountVal = $total * $discount;
                                    echo "<td colspan=3>" . $discountVal . "</td>";
                                } else {
                                    echo "<td colspan=3 class='table table-danger'>You don't have discount</td>";
                                }
                                ?>
                            </tr>
                            <tr>
                                <td>Total after Discount</td>
                                <?php
                                $totalAfterDiscount = 0;
                                if (is_numeric($discountVal) && $discountVal > 0) {
                                    $totalAfterDiscount = $total - $discountVal;
                                    echo "<td colspan=3>{$totalAfterDiscount}</td>";
                                } else {
                                    echo "<td colspan=3 class='table table-danger'>You don't have discount</td>";
                                }
                                ?>
                            </tr>
                            <tr>
                                <td>Delivery</td>
                                <?php
                                if (!empty($_SESSION['city']) && gettype($_SESSION['city'] == "string")) {
                                    $delivery = 0;
                                    switch ($_SESSION['city']) {
                                        case '/cairo/i':
                                            break;
                                        case '/giza/i':
                                            $delivery = 30;
                                            break;
                                        case '/alex/i':
                                            $delivery = 50;
                                            break;
                                        default:
                                            $delivery = 100;
                                            break;
                                    }
                                    echo "<td colspan=3> {$delivery}</td>";
                                } else {
                                    echo "<td colspan=3 class='table table-danger'>You don't have discount</td>";
                                }
                                ?>
                            </tr>
                        </tbody>
                        <tfoot class="table-primary">
                            <tr>
                                <td>Net Total</td>
                                <td colspan="3"><?php
                                    
                                    if (is_numeric($totalAfterDiscount) && $totalAfterDiscount > 0) {
                                        echo $totalAfterDiscount + $delivery;
                                    } else {
                                        echo $total + $delivery;
                                    }
                                ?></td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            <?php
            }
            ?>
        </div>
        <div class="col-6">
            <img src="./includes/Product hunt-bro.svg" alt="" style="width: 100%" />
        </div>
    </div>
</div>

<?php
include_once "./includes/footer.php";
