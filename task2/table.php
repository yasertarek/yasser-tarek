<?php
// dynamic table
// dynamic rows //4 
// dynamic columns // 4
// check if gender of user == m ==> male // 1
// check if gender of user == f ==> female // 1

$users = [
    (object)[
        'id' => 1,
        'name' => 'ahmed',
        "gender" => (object)[
            'gender' => 'm'
        ],
        'hobbies' => [
            'football', 'swimming', 'running'
        ],
        'activities' => [
            "school" => 'drawing',
            'home' => 'painting'
        ],
        "phone" => "0123456789"
    ],
    (object)[
        'id' => 2,
        'name' => 'mohamed',
        "gender" => (object)[
            'gender' => 'm'
        ],
        'hobbies' => [
            'swimming', 'running',
        ],
        'activities' => [
            "school" => 'painting',
            'home' => 'drawing'
        ],
        "phone" => ""
    ],
    (object)[
        'id' => 3,
        'name' => 'menna',
        "gender" => (object)[
            'gender' => 'f'
        ],
        'hobbies' => [
            'running',
        ],
        'activities' => [
            "school" => 'painting',
            'home' => 'drawing'
        ],
        "phone" => "098745632"
    ],
];

$genderObj = (object)[
    'm' => 'male',
    'f' => 'female'
]

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Table</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>

<body>
    <?php
    // Check If data is null, then show error
    if (empty($users)) {
        echo "<div class='alert alert-danger'>ErrorData is not valid</div>";
        die;
    }
    ?>
    <table class="table">
        <thead>
            <tr>
                <?php
                /* Get Keys Using  array_keys() method*/
                // Create array keys
                // $objKeys = array_keys((array)$users[0]);
                // foreach ($objKeys as $key) {
                //     print_r("<th scope=\"col\">{$elmnt}</th>");
                // }

                /* Get Keys Using  foreach loop*/
                foreach ($users[0] as $key => $value) {
                    echo "<th scope=\"col\">{$key}</th>";
                }
                ?>
            </tr>
        </thead>
        <tbody>
            <?php
            // Loop through array and add rows dependeing on its length
            foreach ($users as $key => $value) {
                // add row  start tag
                echo "<tr>";
                // loop through each object
                foreach ($value as $key2 => $value2) {
                    // Check if iterator is object, then loop through. Elseif iterator is array, then add it with colspan. Else, then echo it directly
                    if (gettype($value2) == "object") {
                        foreach ($value2 as $key3 => $value3) {

                            if ($key3 == "gender") {
                                $genderObj = (object)[
                                    'm' => 'male',
                                    'f' => 'female'
                                ];
                                echo "<td>{$genderObj->$value3}</td>";
                            } else {
                                echo "<td>{$value3}</td>";
                            }

                        }
                    } elseif (gettype($value2) == "array") {
                        $lastElement = end($value2);
                        echo "<td>";
                        foreach ($value2 as $key3 => $value3) {
                            if($value3 == $lastElement) {
                                echo $value3 . ".";
                            }else {
                                echo $value3 . ", ";
                            }
                        }
                        echo "</td>";

                    } else {
                        // Echo string directly
                        echo "<td>{$value2}</td>";
                    }
                }
                echo "</tr>";
            }
            ?>
        </tbody>
    </table>
</body>

</html>