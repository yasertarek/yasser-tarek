<?php
$pageTitle = "Club Subscription";
include_once "./includes/header.php";

?>

<div class="container">
    <div class="row">
        <div class="col-6 pt-5">
            <form class="form" method="POST" action="games.php">
                <h1 class="text-center heading-primary text-primary mb-5">Club Subscription</h1>
                <div class="mb-4">
                    <label for="memberName" class="form-label mb-2">Member Name</label>
                    <input type="text" class="form-control form-outline" id="memberName" name="memberName" placeholder="Enter your name" required />
                    <div class="form-text">Club subscription starts with 10,000 LE.</div>
                </div>
                <div class="mb-4">
                    <label for="membersCount" class="form-label mb-2">Count of family members</label>
                    <input type="number" class="form-control form-outline" id="membersCount" name="membersCount" placeholder="Enter Members Count" required />
                    <div class="form-text">Cost of each member is 2,500 LE.</div>
                </div>
                <button type="submit" class="btn btn-primary">Subscribe</button>
            </form>
        </div>
        <div class="col-6">
            <img src="./includes/Basketball-rafiki.svg" alt="" style="width: 100%" />
        </div>
    </div>
</div>

<?php
include_once "./includes/footer.php";
