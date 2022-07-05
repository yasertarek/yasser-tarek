<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Min and Max</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
        /* Colors
            • Primary color(purple) => #7357f4
            • White color           => #FCF7FF
            • Dark color           => #1E1927
        */
        body {
            background-image: linear-gradient(to right top, #845ec2, #9c5dc0, #b15dbc, #c55cb7, #d65db1);
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh;
            width: 100vw;
            padding-top: 5rem;
            position: relative;
        }

        form.form {
            max-width: 35rem;
            margin: 0 auto;
            color: #FCF7FF;
            background-color: #1E1927;
            padding: 2rem 3rem;
            border-radius: 1rem;
        }

        /* Start Bootstrap Restyling */
        input.form-outline {
            background-color: transparent;
            border: 1px solid #DFF6FF2B;
            transition: border 0.2s ease-in-out;
            color: #FCF7FF;
        }

        input.form-outline:active,
        input.form-outline:focus {
            background-color: #342C49;
            color: #FCF7FF;
        }

        input.form-outline:active {
            border: 2px solid #DFF6FF;
        }

        .btn {
            transition: all 0.2s ease-in-out;
        }

        .btn:hover {
            transform: scale(1.025) translateY(-1px);
            box-shadow: 1px 4px 5px rgba(0, 0, 0, 0.2);
        }

        .btn:active {
            transform: scale(0.975) translateY(1px);
            box-shadow: 1px 1px 2px rgba(0, 0, 0, 0.35);
        }

        .btn-primary {
            background-color: #7357f4;
        }

        .btn-primary:hover {
            background-color: #9371FF;
        }

        .btn:hover {}

        /* End Bootstrap Restyling */

        footer.footer {
            text-align: center;
            margin-top: 3rem;
            font-size: 1rem;
            color: #DFF6FF;
            display: flex;
            justify-content: center;
        }

        footer.footer p {
            margin: 0;
        }

        footer.footer a {
            color: inherit;
            text-decoration: none;
            transition: transform 0.2s ease-in-out, text-shadow 0.2s ease-in-out, color 0.2s ease-in-out;
            display: block;
            margin-left: 3px;
        }

        footer.footer a:hover {
            transform: skewX(-6deg) scale(1.15);
            text-shadow: 1px 2px 5px rgba(0, 0, 0, 0.25);
            color: #342C49;
        }

        .popup {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            z-index: 999;
            background-color: #FF5A4F;
            width: 20rem;
            height: 15rem;
            backdrop-filter: blur(7px);
            border-radius: 1rem;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 1rem 2rem;
            color: #DFF6FF;
        }
        .popup > h3 {
            color: #1E1927;
        }
        .popup p a {
            color: #1E1927;
        }

        .overlay {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: #000;
            opacity: 65%;
            z-index: 998;
        }

        #countdown {
            position: relative;
            height: 40px;
            width: 40px;
            text-align: center;
        }

        #countdown-number {
            color: white;
            display: inline-block;
            line-height: 40px;
        }

        svg {
            position: absolute;
            top: 0;
            right: 0;
            width: 40px;
            height: 40px;
            transform: rotateY(-180deg) rotateZ(-90deg);
        }

        svg circle {
            stroke-dasharray: 113px;
            stroke-dashoffset: 0px;
            stroke-linecap: round;
            stroke-width: 2px;
            stroke: white;
            fill: none;
            animation: countdown 5s linear forwards;
        }

        @keyframes countdown {
            from {
                stroke-dashoffset: 0px;
            }

            to {
                stroke-dashoffset: 113px;
            }
        }
    </style>
</head>

<body>

    <?php
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
    <div class="container">
        <form class="form" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            <h1 class="text-center">Get Minimum and Maximum numbers</h1>
            <div class="mb-3">
                <label for="firstNum" class="form-label">Enter Number</label>
                <input type="number" class="form-control form-outline" id="firstNum" name="firstNum">
            </div>
            <div class="mb-3">
                <label for="secondNum" class="form-label">Enter Number</label>
                <input type="number" class="form-control form-outline" id="secondNum" name="secondNum">
            </div>
            <div class="mb-3">
                <label for="thirdNum" class="form-label">Enter Number</label>
                <input type="number" class="form-control form-outline" id="thirdNum" name="thirdNum">
            </div>
            <button type="submit" class="btn btn-primary">Click to Get Min and Max Number</button>
            <?php
            // Check if user came through POST Method and entered all numbers
            if ($_SERVER['REQUEST_METHOD'] == 'POST' && $_POST['firstNum'] && $_POST['secondNum'] . $_POST['thirdNum']) {
                // Calculate the maximum number
                $max = $_POST['firstNum'];
                $min = $_POST['firstNum'];
                $max = $max < $_POST['secondNum'] ? $max = $_POST['secondNum'] : $max = $max;
                $max = $max < $_POST['thirdNum'] ? $max = $_POST['thirdNum'] : $max = $max;

                $min = $min > $_POST['secondNum'] ? $min = $_POST['secondNum'] : $min = $min;
                $min = $min > $_POST['thirdNum'] ? $min = $_POST['thirdNum'] : $min = $min;

                echo "<div class=\"mt-5 d-flex justify-content-between\">
                <div class=\"text-center\">
                    <h5>Maximum Number</h5>
                    <span>" . $max . "</span>
                </div>
                <div class=\"text-center\">
                    <h5>Minimum Number</h5>
                    <span>". $min ."</span>
                </div>
            </div>";
            }
            ?>
        </form>
    </div>
    <footer class="footer">
        <p>Task done by </p><a href="#">Yasser Tarek</a>
    </footer>
</body>

</html>