<?php
include_once "./includes/header.php";
// Check if user is coming through a POST method, then show error and redirect to main page
if ($_SERVER['REQUEST_METHOD'] == 'GET' && $_GET) {
    include_once('./includes/redirect.php');
    redirect('number.php');
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