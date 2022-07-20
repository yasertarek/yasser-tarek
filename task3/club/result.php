<?php
session_start();
$pageTitle = "Result";
include_once "./includes/header.php";
// Check for Request
if ($_SERVER['REQUEST_METHOD'] == 'GET' && empty($_POST)) {
    include_once "./includes/redirect.php";
    redirect("./subscribe");
}
?>

<div class="container">
    <div class="row">
        <div class="col-6 pt-5">
            <table class="table">
                <thead>
                    <tr class="table-primary">
                        <th scope="col">Subscriber</th>
                        <th colspan="4"><?= $_SESSION['memberName'] ?></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    for ($i = 0; $i < $_SESSION['membersCount']; $i++) {
                    ?>
                        <tr>
                            <td><?= $_POST['member'][$i] ?></td>
                            <td><?= $_POST['footbal'][$i] ?? isset($_POST['footbal'][$i]) ?></td>
                            <td><?= $_POST['swimming'][$i] ?? isset($_POST['swimming'][$i]) ?></td>
                            <td><?= $_POST['volleyball'][$i] ?? isset($_POST['volleyball'][$i]) ?></td>
                            <td><?= $_POST['others'][$i] ?? isset($_POST['others'][$i]) ?></td>
                        </tr>
                    <?php
                    }
                    ?>
                </tbody>
                <tfoot>
                    <tr class="table-primary">
                        <td>Total Price</td>
                        <td colspan="4" class="text-end"><?= count($_POST['footbal']) * 300 + count($_POST['swimming']) * 250 + count($_POST['volleyball']) * 150 + count($_POST['others']) * 100 ?></td>
                    </tr>
                </tfoot>
            </table>
            <h2 class="text-primary text-center mt-5">Sports</h2>
            <table class="table">
                <tbody>
                    <tr>
                        <th>Footbal</th>
                        <th><?= count($_POST['footbal']) * 300 ?> LE</th>
                    </tr>
                    <tr>
                        <th>Swimming</th>
                        <th><?= count($_POST['swimming']) * 250 ?> LE</th>
                    </tr>
                    <tr>
                        <th>Volleyball</th>
                        <th><?= count($_POST['volleyball']) * 150 ?> LE</th>
                    </tr>
                    <tr>
                        <th>Others</th>
                        <th><?= count($_POST['others']) * 100 ?> LE</th>
                    </tr>
                    <tr>
                        <th>Club Subscription</th>
                        <th><?= (count($_POST['member']) * 2500) + 10000 ?> LE</th>
                    </tr>
                </tbody>
                <tfoot>
                    <tr class="table-primary">
                        <td>Total price</td>
                        <td><?= (count($_POST['footbal']) * 300) +  (count($_POST['swimming']) * 250) + (count($_POST['volleyball']) * 150) + (count($_POST['others']) * 100) + (count($_POST['member']) * 2500) + 10000 ?> LE</td>
                    </tr>
                </tfoot>
            </table>
        </div>
        <div class="col-6">
            <img src="./includes/Basketball-rafiki.svg" alt="" style="width: 100%" />
        </div>
    </div>
</div>

<?php
include_once "./includes/footer.php";
