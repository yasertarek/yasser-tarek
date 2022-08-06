<?php
include_once "./init.php";
$title = "register";
include_once "./layouts/header.php";
include_once "./layouts/navbar.php";
include_once "./layouts/breadcrumb.php";

use App\Http\Requests\Validation;
use App\Database\Models\User;
use App\Mails\VerificationCodeMail;

$validation = new Validation;
$user = new User;
/* Register Cycle 
    [1] Validate Data that User entered
        • False: Show error messages
    [2] Generate Verification code
    [3] Insert Data into DB
    [4] Send Verification code to user's email
    [5] Redirect user to verification code page

*/
// Validate Data that User entered
if ($_SERVER['REQUEST_METHOD'] == 'POST' && $_POST) {
    // Validate first name
    $validation->setTarKey('first name')->setTarVal($_POST['first_name'])->required()->string()->max(32);
    // Validate last name
    $validation->setTarKey('last name')->setTarVal($_POST['last_name'])->required()->string()->max(32);
    // Validate email
    $validation->setTarKey('email')->setTarVal($_POST['email'])->required()->matchRegEx("/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/")->unique('users', 'email');
    // Validate phone
    $validation->setTarKey('phone')->setTarVal($_POST['phone'])->required()->matchRegEx("/^01[0125][0-9]{8}$/")->unique('users', 'phone');
    // Validate password
    $validation->setTarKey('password')->setTarVal($_POST['password'])->required()->matchRegEx("/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,32}$/", "Minimum eight and maximum 32 characters, at least one uppercase letter, one lowercase letter, one number and one special character.")->confirmed($_POST['password_confirmation']);
    // Validate password Confirmation
    $validation->setTarKey('password confirmation')->setTarVal($_POST['password_confirmation'])->required();
    // Validate gender
    $validation->setTarKey('gender')->setTarVal($_POST['gender'])->required()->isIn(['m', 'f']);
    // If there is no Errors, then Insert data into DB
    if (empty($validation->getErrors())) {
        $verification_code = rand(100000,999999);
        $user->setFirst_name($_POST['first_name'])->setLast_name($_POST['last_name'])->setEmail($_POST['email'])->setPhone($_POST['phone'])->setPassword(password_hash($_POST['password'], PASSWORD_DEFAULT))->setGender($_POST['gender'])->setVerification_code($verification_code);
        echo $user->getFirst_name();
        // Create user and If created successfully, send mail with verification code
        if($user->create()){
            $subject = "Verification Code";
            $body = "<p> Dear {$_POST['first_name']} {$_POST['last_name']}</p>
            <p>Your Verification Code:<b style='color:blue'>{$verification_code}</b></p>
            <p>Thank You</p>";
            // Send Mail
            $verificationCodeMail = new VerificationCodeMail($user->getEmail(), $subject, $body);
            if($verificationCodeMail->send()){
                // save Email in Session
                $_SESSION['verification_email'] = $_POST['email'];
                // Redirect to Verification code page
                header('location:verification-code.php?page=register');die; //get
            }else{
                $error = "<div class='alert alert-danger text-center'> Please Try Again Later </div>";
            }
            
        }else{
            $error = "<div class='alert alert-danger text-center'> Something Went Wrong </div>";
        }
    }
}
?>
<!-- Breadcrumb Area Start -->

<!-- Breadcrumb Area End -->
<div class="login-register-area ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-12 ml-auto mr-auto">
                <div class="login-register-wrapper">
                    <div class="login-register-tab-list nav">
                        <a class="active" data-toggle="tab" href="#lg1">
                            <h4> Register </h4>
                        </a>
                    </div>
                    <div class="tab-content">
                        <div>
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <?= $error ?? "" ?>
                                    <form method="post">
                                        <?= $error ?? "" ?>
                                        <input type="text" value="<?= $_POST['first_name'] ?? "" ?>" name="first_name" placeholder="First Name">
                                        <?= $validation->getMessage('first name') ?>
                                        <input type="text" value="<?= $_POST['last_name'] ?? "" ?>" name="last_name" placeholder="Last Name">
                                        <?= $validation->getMessage('last name') ?>
                                        <input name="email" value="<?= $_POST['email'] ?? "" ?>" placeholder="Email" type="email">
                                        <?= $validation->getMessage('email') ?>
                                        <input name="phone" value="<?= $_POST['phone'] ?? "" ?>" placeholder="Phone" type="tel">
                                        <?= $validation->getMessage('phone') ?>
                                        <input type="password" name="password" placeholder="Password">
                                        <?= $validation->getMessage('password') ?>
                                        <input type="password" name="password_confirmation" placeholder="Password Confirmation">
                                        <?= $validation->getMessage('password confirmation') ?>
                                        <select name="gender" class="form-control">
                                            <option <?= isset($_POST['gender']) && $_POST['gender'] == 'm' ? 'selected' : '' ?> value="m">Male</option>
                                            <option <?= isset($_POST['gender']) && $_POST['gender'] == 'f' ? 'selected' : '' ?> value="f">Female</option>
                                        </select>
                                        <?= $validation->getMessage('gender') ?>
                                        <div class="button-box mt-5">
                                            <button type="submit"><span>Register</span></button>
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
<!-- Footer style Start -->
<footer class="footer-area pt-75 gray-bg-3">
    <div class="footer-top gray-bg-3 pb-35">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer-widget mb-40">
                        <div class="footer-title mb-25">
                            <h4>My Account</h4>
                        </div>
                        <div class="footer-content">
                            <ul>
                                <li><a href="my-account.html">My Account</a></li>
                                <li><a href="about-us.html">Order History</a></li>
                                <li><a href="wishlist.html">WishList</a></li>
                                <li><a href="#">Newsletter</a></li>
                                <li><a href="about-us.html">Order History</a></li>
                                <li><a href="#">International Orders</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer-widget mb-40">
                        <div class="footer-title mb-25">
                            <h4>Information</h4>
                        </div>
                        <div class="footer-content">
                            <ul>
                                <li><a href="about-us.html">About Us</a></li>
                                <li><a href="#">Delivery Information</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Terms & Conditions</a></li>
                                <li><a href="#">Customer Service</a></li>
                                <li><a href="#">Return Policy</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer-widget mb-40">
                        <div class="footer-title mb-25">
                            <h4>Quick Links</h4>
                        </div>
                        <div class="footer-content">
                            <ul>
                                <li><a href="#">Support Center</a></li>
                                <li><a href="#">Term & Conditions</a></li>
                                <li><a href="#">Shipping</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Help</a></li>
                                <li><a href="#">FAQS</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer-widget footer-widget-red footer-black-color mb-40">
                        <div class="footer-title mb-25">
                            <h4>Contact Us</h4>
                        </div>
                        <div class="footer-about">
                            <p>Your current address goes to here,120 haka, angladesh</p>
                            <div class="footer-contact mt-20">
                                <ul>
                                    <li>(+008) 254 254 254 25487</li>
                                    <li>(+009) 358 587 657 6985</li>
                                </ul>
                            </div>
                            <div class="footer-contact mt-20">
                                <ul>
                                    <li>yourmail@example.com</li>
                                    <li>example@admin.com</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom pb-25 pt-25 gray-bg-2">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="copyright">
                        <p><a target="_blank" href="https://www.templateshub.net">Templates Hub</a></p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="payment-img f-right">
                        <a href="#">
                            <img alt="" src="assets/img/icon-img/payment.png">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer style End -->
<?php
include_once "./layouts/scripts.php";
?>