<?php

function redirect($uri){
    echo "<div class=\"popup\">
    <h3>Error: 405 Method Not Allowed</h3>
    <p>You tried to access page in illegal way and you'll be directed to right page after 5 seconds <a href=\"{$uri}\">click here to redirect now</a></p>
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
                window.location = '{$uri}';
                clearInterval(counter);
            }
        }, 1000);
    </script>";
    die;
}
