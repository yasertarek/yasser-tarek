<?php
include_once "./includes/header.php";

?>

<div class="container">
    <div class="row">
        <div class="col-6 pt-5">
            <form class="form" method="POST" action="<?= $_SERVER['PHP_SELF'] ?>">
                <h1 class="text-center heading-primary text-primary mb-5">Bank</h1>
                <div class="mb-4">
                    <label for="name" class="form-label mb-2">Name</label>
                    <input type="text" class="form-control form-outline" id="name" name="name" placeholder="Enter your name" required value="<?= $_POST['name'] ?? isset($_POST['name']) ?> " />
                </div>
                <div class="mb-4">
                    <label for="loanAmount" class="form-label mb-2">Loan Amount</label>
                    <input type="number" class="form-control form-outline" id="loanAmount" name="loanAmount" placeholder="Enter your Loan Amount" required value="<?= isset($_POST['loanAmount']) ? (int)$_POST['loanAmount'] : '' ?>" />
                </div>
                <div class="mb-4">
                    <label for="loanYears" class="form-label mb-2">Loan Years</label>
                    <input type="number" class="form-control form-outline" id="loanYears" name="loanYears" placeholder="Enter your Loan Years" required value="<?= isset($_POST['loanYears']) ? (int)$_POST['loanYears'] : '' ?>" />
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            <?php
            // Check for Calculate Request 
            if ($_SERVER['REQUEST_METHOD'] == 'POST' && !empty($_POST)) {
                $interest = $_POST['loanYears'] <= 3 ? 0.10 : 0.15;
                $interestRate = $interest * $_POST['loanAmount'];
                $loanAfterRate = ($interestRate  * $_POST['loanYears']) + $_POST['loanAmount'];
                $monthly = $loanAfterRate / ($_POST['loanYears'] * 12);
                // print table
            ?>
                <table class="table mt-5">
                    <thead class="table-primary">
                        <th>Name</th>
                        <th>Interest rate</th>
                        <th>Loan after rate</th>
                        <th>Monthly</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td><?= $_POST['name'] ?></td>
                            <td><?= $interestRate ?></td>
                            <td><?= $loanAfterRate ?></td>
                            <td><?= $monthly ?></td>
                        </tr>
                    </tbody>
                </table>
            <?php
            }
            ?>
        </div>
        <div class="col-6">
            <img src="./includes/Service 24_7-bro.svg" alt="" style="width: 100%" />
        </div>
    </div>
</div>

<?php
include_once "./includes/footer.php";
