<?php
session_start();
$_SESSION['memberName'] = $_POST['memberName'];
$_SESSION['membersCount'] = $_POST['membersCount'];
$pageTitle = "Club Games";
include_once "./includes/header.php";
// Check for Request
if ($_SERVER['REQUEST_METHOD'] == 'GET' && empty($_POST)) {
    include_once "./includes/redirect.php";
    redirect("./subscribe");
}
?>

<div class="container">
    <div class="row">
        <form class="col-6" method="POST" action="result.php">
            <?php
            for ($i = 1; $i <= $_POST['membersCount']; $i++) {
            ?>
                <div class="mb-5">
                    <div class="mb-4">
                        <label class="form-label" for="<?= "member" . $i ?>">Member <?= $i ?></label>
                        <input type="text" class="form-control form-outline" id="<?= "member" . $i ?>" name="member[]" placeholder="Enter member" required />
                    </div>
                    <div class="mt-2">
                        <div class="form-check mb-2">
                            <input type="checkbox" class="form-check-input" id="footbal<?= $i ?>" name="footbal[]" value="footbal" />
                            <label class="form-check-label" for="footbal<?= $i ?>">Football 300 LE</label>
                        </div>
                        <div class="form-check mb-2">
                            <input type="checkbox" class="form-check-input" id="swimming<?= $i ?>" name="swimming[]" value="swimming" />
                            <label class="form-check-label" for="swimming<?= $i ?>">Swimming 250 LE</label>
                        </div>
                        <div class="form-check mb-2">
                            <input type="checkbox" class="form-check-input" id="volleyball<?= $i ?>" name="volleyball[]" value="volleyball" />
                            <label class="form-check-label" for="volleyball<?= $i ?>">Volleyball 150 LE</label>
                        </div>
                        <div class="form-check mb-2">
                            <input type="checkbox" class="form-check-input" id="others<?= $i ?>" name="others[]" value="others" />
                            <label class="form-check-label" for="others<?= $i ?>">Others 100 LE</label>
                        </div>
                    </div>
                </div>
            <?php
            }
            ?>
            <div class="d-grid"><button class="btn btn-primary">Check Price</button></div>
        </form>
        <div class="col-6">
            <img src="./includes/Basketball-pana.svg" alt="" style="width: 100%" />
        </div>
    </div>
</div>

<?php
include_once "./includes/footer.php"
?>