<?php
include_once "./includes/header.php";
// Check if user is coming through a POST method, then show error and redirect to main page
if ($_SERVER['REQUEST_METHOD'] == 'GET' && $_GET) {
    echo "<div class=\"popup\">
        <h3>Error: 405 Method Not Allowed</h3>
        <p>You tried to access page in illegal way and you'll be directed to right page after 5 seconds <a href=\"" . explode('?', $_SERVER["REQUEST_URI"])[0] . "\">click here to redirect now</a></p>
        <div id=\"countdown\">
            <div id=\"countdown-number\"></div>
            <svg>
                <circle r=\"18\" cx=\"20\" cy=\"20\"></circle>
            </svg>
        </div>
    </div>
    <div class=\"overlay\"></div>
    <script>
            let countdownNumberEl = document.getElementById('countdown-number');
            let countdown = 5;
    
            countdownNumberEl.textContent = countdown;
            const counter = setInterval(function() {
                countdown--;
                countdownNumberEl.textContent = countdown;
                if (countdown < 1) {
                    window.location = window.location.href.split(\"?\")[0];
                    clearInterval(counter);
                }
            }, 1000);
        </script>";
    die;
};
?>
<div class="container text-end" dir="rtl">
    <div class="row">
        <form class="form col-6 pt-5" method="POST" action="review.php">
            <h1 class="text-center heading-primary mb-5" style="color: #001C00">استطلاع رأي عن خدمة المستشفى</h1>
            <div class="mb-4 text-end">
                <label for="phone" class="form-label mb-2">رقم الهاتف</label>
                <input type="number" class="form-control form-outline text-end" id="phone" name="phone" placeholder="ادخل هنا رقم الهاتف لبدء الإستطلاع" required />
            </div>
            <button type="submit" class="btn btn-primary">ارسال</button>
        </form>
        <div class="col-6">
            <img src="./includes/number.svg" alt="" style="width: 100%" />
        </div>
    </div>
</div>

<?php include_once "./includes/footer.php"; ?>