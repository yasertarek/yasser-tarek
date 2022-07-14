<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Review</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
        /* Colors  
            • Primary color(green) => #9AE462
            • White color           => #F8FFF8
            • Dark color           => #001C00
        */
        body {
            padding-top: 5rem;
        }

        /* Hide input Arrows */
        /* Chrome, Safari, Edge, Opera */
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        /* Firefox */
        input[type=number] {
            -moz-appearance: textfield;
        }

        /* Start Bootstrap Restyling */


        .btn {
            transition: all 0.2s ease-in-out;
            box-shadow: 3px 5px 8px rgba(0, 0, 0, 0.1);
        }

        .btn-primary {
            --bs-btn-color: #F8FFF8;
            --bs-btn-bg: #9AE462;
            --bs-btn-border-color: #9AE462;
            --bs-btn-hover-color: #F8FFF8;
            --bs-btn-hover-bg: #6BB535;
            --bs-btn-hover-border-color: #005D00;
            --bs-btn-focus-shadow-rgb: 49, 132, 253;
            --bs-btn-active-color: #F8FFF8;
            --bs-btn-active-bg: #005D00;
            --bs-btn-active-border-color: #004F00;
            --bs-btn-active-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
            --bs-btn-disabled-color: #F8FFF8;
            --bs-btn-disabled-bg: #9AE462;
            --bs-btn-disabled-border-color: #9AE462;
        }

        .btn:hover {
            transform: scale(1.025) translateY(-1px);
            box-shadow: 1px 4px 5px rgba(0, 0, 0, 0.2);
        }

        .btn:active {
            transform: scale(0.975) translateY(1px);
            box-shadow: 1px 1px 2px rgba(0, 0, 0, 0.35);
        }

        .table-primary {
            --bs-table-color: #001C00;
            --bs-table-bg: #9AE462;
            --bs-table-border-color: #3B8800;
            --bs-table-striped-bg: #99a462;
            --bs-table-striped-color: #001c00;
            --bs-table-active-bg: #6BB535;
            --bs-table-active-color: #001c00;
            --bs-table-hover-bg: #3B8800;
            --bs-table-hover-color: #001c00;
            color: var(--bs-table-color);
            border-color: var(--bs-table-border-color);
        }

        /* End Bootstrap Restyling */
        /* .heading-primary {
            text-shadow: 1px 3px 5px rgba(0, 0, 0, 0.2);
        } */
        footer.footer {
            text-align: center;
            margin-top: 3rem;
            font-size: 1rem;
            color: #001c00;
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
            color: #9AE462;
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
            color: #001C00;
        }

        .popup p a {
            color: #001C00;
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