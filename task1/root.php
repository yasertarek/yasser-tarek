<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Root Calculator</title>
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

        .popup>h3 {
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

        .popup>h3 {
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

        .radical-sign {
            line-height: 1;
            font-size: 4rem;
        }

        #num {
            height: 100%;
            width: 100%;
            border-radius: 0;
            font-size: 1.5rem;
        }

        .num_parent {
            position: relative;
            height: 3rem;
            align-self: end;
            flex-grow: 1;
        }

        .num_parent::before {
            content: '';
            position: absolute;
            left: -9px;
            top: -6px;
            width: 104%;
            height: 3px;
            background-color: #fff;
        }

        #root {
            height: 2rem;
            flex-grow: 0.7;
            border-radius: 0;
        }
        .radic {
            font-size: 22px;
        }
        .numberSpan{
            position: relative;
        }
        .numberSpan::before {
            content: '';
            position: absolute;
            left: -3px;
            top: 0px;
            width: calc(100% + 3px);
            height: 1px;
            background-color: #fff;
        }
        .result {
            float: right;
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
            <h1 class="text-center">Root Calculator</h1>
            <div class="form-group input-group mb-3">
                <input type="number" class="form-control form-outline" id="root" name="root">
                <span class="radical-sign">√</span>
                <div class="num_parent"><input type="number" class="form-control form-outline" id="num" name="num"></div>
            </div>
            <button type="submit" class="btn btn-primary">Calculate</button>
            <div class="result">
                <?php
                if ($_SERVER['REQUEST_METHOD'] == 'POST' && $_POST['root'] && $_POST['num']) {
                    // echo "Result is = " . $_POST['num'] ** (1 / $_POST['root']);
                    echo "<sup>" . $_POST['root'] . "</sup><span class=\"radic\">&radic;</span><span class=\"numberSpan\">" . $_POST['num'] . "</span> = " . $_POST['num'] ** (1 / $_POST['root']);
                }
                ?>
            </div>
    </div>
    </form>
    </div>
    <footer class="footer">
        <p>Task done by </p><a href="#">Yasser Tarek</a>
    </footer>
</body>

</html>