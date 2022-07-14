<?php

session_start();
include_once "./includes/header.php";
// Check if user came through Link direct, then show error
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    include_once('./includes/redirect.php');
    redirect('number.php');
}
// Show result
$choices = ['سيء', 'جيد', 'جيد جدا', 'ممتاز'];
global $resultNumber;
$resultNumber = 0;
function getResult($code)
{
    global $resultNumber;
    switch ($code) {
        case 0:
            return 'سيء';
            break;
        case 1:
            $resultNumber += 3;
            return 'جيد';
            break;
        case 2:
            $resultNumber += 5;
            return 'جيد جدا';
            break;
        case 3:
            $resultNumber += 10;
            return 'ممتاز';
            break;
        default:
            return "<div class=\"alert alert-danger\">The code({$code}) is not in results";
            break;
    }
}
function printTotal($num)
{
    switch ($num) {
        case $num >= 0 && $num < 15:
            return 'سيء';
            break;
        case $num >= 15 && $num < 25:
            return 'جيد';
            break;
        case $num >= 25 && $num < 50:
            return 'جيد جدا';
            break;
        case $num >= 50:
            return 'ممتاز';
            break;
        default:
            return "<div class=\"alert alert-danger\">The code({$num}) is not in results";
            break;
    }
}
?>
<div class="container">
    <h1 class="text-center mb-5">النتيجة</h1>
    <div class="row align-items-center">
        <div class="col-4">
            <img src="./includes/result.svg" alt="" />
        </div>
        <div class="col-8">
            <table dir="rtl" class="table table-borderless table-hover">
                <thead class="table-dark">
                    <th>السؤال</th>
                    <th>الإجابة</th>
                </thead>
                <tbody>
                    <tr>
                        <td>هل انت راضي عن مستوى النظافة ؟</td>
                        <?= "<td>" . getResult($_POST['q1']) . "</td>" ?>
                    </tr>
                    <tr>
                        <td>هل انت راضي علي اسعار الخدمات</td>
                        <?= "<td>" . getResult($_POST['q2']) . "</td>" ?>
                    </tr>
                    <tr>
                        <td>هل انت راضي عن خدمة التمريض ؟</td>
                        <?= "<td>" . getResult($_POST['q3']) . "</td>" ?>
                    </tr>
                    <tr>
                        <td>هل انت راضي علي مستوي الدكاترة ؟</td>
                        <?= "<td>" . getResult($_POST['q4']) . "</td>" ?>
                    </tr>
                    <tr>
                        <td>هل انت راضي علي الهدوء بالمستشفي ؟</td>
                        <?= "<td>" . getResult($_POST['q5']) . "</td>" ?>
                    </tr>
                </tbody>
                <tfoot class="table-dark">
                    <td>المجموع الكلي</td>
                    <td> <?= printTotal($resultNumber) ?> </td>
                </tfoot>
            </table>
        </div>
    </div>
    <?php
    // Check if nubmer is less than 25, then print error
    if ($resultNumber < 25) {
        echo "<div class='alert alert-danger text-center'> سنقوم بالإتصال بك على هذا الرقم {$_SESSION['phone']}</div>";
    } else {
        echo "<div class='alert alert-success text-center'>شكرا لك</div>";
    }
    ?>
</div>
<?php
include_once "./includes/footer.php";
