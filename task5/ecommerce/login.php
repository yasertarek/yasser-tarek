<?php

use App\Http\Requests\Validation;
use App\Database\Models\User;

include_once "./init.php";
$title = "Login";
include_once $dir__lay . "header.php";
include_once $dir__lay . "navbar.php";
include_once $dir__lay . "breadcrumb.php";
$validation = new Validation;
// Check if request is Post, Proccess Login Cycle
if($_SERVER['REQUEST_METHOD'] == 'POST' ) {
    /**
     * Login Process Cycle
     **/
    $email = $_POST['email'];
    $password = $_POST['password'];
    $hashPass = password_hash($password, PASSWORD_DEFAULT);
    // Validate Email
    $validation->setTarKey("email")->setTarVal($email)->required()->matchRegEx("/^[^\s@]+@[^\s@]+\.[^\s@]+$/", " ");
    // Vallidate Password
    $validation->setTarKey('password')->setTarVal($_POST['password'])->required()->matchRegEx("/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,32}$/", "Wrong Email Or Password. <a class='text-primary font-weight-bold' href='register.php'> Create Account Here</a>");
    // Select from users table WHERE email = ? AND password = ?
    $userModel = new User;
    $userModel->setEmail($email);
    // Fetch row from database By given email
    $userResult = $userModel->getUserByEmail($email);
    // Check if email is associated with any user
    if($userResult->num_rows == 1) {
        // The given email is already associated with account
        // Fetch User data
        $userDataRow = $userResult->fetch_object();
        // Check if the entered password is true
        if(password_verify($password, $userDataRow->password)){
            // Check if Email is verified
            if($userDataRow->email_verified_at != null) {
                // Save user data in session
                $_SESSION['user'] = $userDataRow;
                // Save user login into cookie if he choosed
                if(isset($_POST['remember_me'])){
                    setcookie('user',$_POST['email'],time() + (86400*365) ,'/');
                }
                // Redirect to Home Page
                header("Location:index.php");die;
            }else{
                // Redirect to Verification code page
                // Store verification email before
                $_SESSION['verification_email'] = $email;
                header("Location:verification-code.php");die;
            }
        }else {
            $error = "Wrong Email Or Password. <a class='text-primary font-weight-bold' href='register.php'> Create Account Here</a>";    
        }
        
    }else {
        $error = "Wrong Email Or Password. <a class='text-primary font-weight-bold' href='register.php'> Create Account Here</a>";
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
                            <h4> login </h4>
                        </a>
                    </div>
                    <div class="tab-content">
                        <div id="lg1" class="tab-pane active">
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <form action="<?= $_SERVER['PHP_SELF'] ?>" method="post">
                                        <input type="text" name="email" placeholder="Email">
                                        <?= $validation->getMessage("email") ?>
                                        <input type="password" name="password" placeholder="Password">
                                        <?= $validation->getMessage("password") ?>
                                        <div class="button-box">
                                            <div class="login-toggle-btn">
                                                <input type="checkbox">
                                                <label>Remember me</label>
                                                <a href="<?= $root ?>forget-password.php">Forgot Password?</a>
                                            </div>
                                            <button type="submit"><span>Login</span></button>
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
<?php
include_once $dir__lay . "footer.php";
echo "<!-- Footer style End -->";
include_once $dir__lay . "scripts.php";
?>