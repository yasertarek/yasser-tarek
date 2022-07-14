<?php
session_start();
include_once "./includes/header.php";
// Check if user phone number is not given, then show error and redirect to number.php page
if (!isset($_POST['phone'])) {
    echo "<div class='alert alert-danger'>You shoul'd enter your number !</div>";
    /* Ask Eng/Galal about timeout bug */
    // redirect after 1 sec
    // set_time_limit(10);
    /* Redirect to a different page in the current directory that was requested */
    include_once('./includes/redirect.php');
    redirect('number.php');
}
// Store phone number in session
$_SESSION['phone'] = $_POST['phone'];
?>

<div class="container">
    <div class="row">
    <div class="col-4">
            <img src="./includes/review.svg" alt="" />
        </div>
        <form class="form col-8" method="POST" action="result.php" style="max-width: none;">
            <h1 class="text-center heading-primary mb-5">استطلاع رأي عن خدمة المستشفى</h1>
            <table dir="rtl" class="table table-hover">
                <thead class="table-primary">
                    <th>السؤال</th>
                    <th>سيء</th>
                    <th>جيد</th>
                    <th>جيد جدا</th>
                    <th>ممتاز</th>
                </thead>
                <tbody>
                    <tr>
                        <td>هل انت راضي عن مستوى النظافة ؟</td>
                        <?php for ($i = 0; $i < 4; $i++) {
                            echo "<td><input type=\"radio\" class=\"form-check-input\" name=\"q1\" value=\"{$i}\" required /></td>";
                        } ?>
                    </tr>
                    <tr>
                        <td>هل انت راضي علي اسعار الخدمات</td>
                        <?php for ($i = 0; $i < 4; $i++) {
                            echo "<td><input type=\"radio\" class=\"form-check-input\" name=\"q2\" value=\"{$i}\" required /></td>";
                        } ?>
                    </tr>
                    <tr>
                        <td>هل انت راضي عن خدمة التمريض ؟</td>
                        <?php for ($i = 0; $i < 4; $i++) {
                            echo "<td><input type=\"radio\" class=\"form-check-input\" name=\"q3\" value=\"{$i}\" required /></td>";
                        } ?>
                    </tr>
                    <tr>
                        <td>هل انت راضي علي مستوي الدكاترة ؟</td>
                        <?php for ($i = 0; $i < 4; $i++) {
                            echo "<td><input type=\"radio\" class=\"form-check-input\" name=\"q4\" value=\"{$i}\" required /></td>";
                        } ?>
                    </tr>
                    <tr>
                        <td>هل انت راضي علي الهدوء بالمستشفي ؟</td>
                        <?php for ($i = 0; $i < 4; $i++) {
                            echo "<td><input type=\"radio\" class=\"form-check-input\" name=\"q5\" value=\"{$i}\" required /></td>";
                        } ?>
                    </tr>
                </tbody>
            </table>
            <button type="submit" class="btn btn-primary d-block mx-auto">ارسال</button>
        </form>
    </div>
</div>

<?php include_once "./includes/footer.php"; ?>