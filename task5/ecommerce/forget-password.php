<?php 
include_once "./init.php";
$title = "Forget Password";
include_once $dir__lay . "header.php";
include_once $dir__lay . "navbar.php";
include_once $dir__lay . "breadcrumb.php";
?>
<div class="login-register-area ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-12 ml-auto mr-auto">
                <div class="login-register-wrapper">
                    <div class="login-register-tab-list nav">
                        <a class="active" data-toggle="tab" href="#lg1">
                            <h4> Find Your Account </h4>
                        </a>
                    </div>
                    <div class="tab-content">
                        <div id="lg1" class="tab-pane active">
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <form action="<?= $_SERVER['PHP_SELF'] ?>" method="post">
                                        <input type="text" name="email" placeholder="Email">
                                        <?= $validation->getMessage("email") ?>
                                        <div class="button-box">
                                            <button type="submit"><span>Search</span></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>