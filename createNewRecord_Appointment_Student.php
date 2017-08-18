<?php

require_once("config.php");


//Prevent the user visiting the logged in page if he/she is already logged in
/*if(isUserLoggedIn()) { header("Location: myaccount.php"); die(); }*/

print_r($_POST);

//Forms posted
if(!empty($_POST))
{
    $errors = array();
    $email = trim($_POST["email"]);
    $astudent = trim($_POST["astudent"]);
    $aadvisor = trim($_POST["aadvisor"]);
    $atime = trim($_POST["atime"]);
    $adate = trim($_POST["adate"]);


   

    if($aadvisor == "")
    {
        $errors[] = "enter valid advisor";
    }

    if($atime == "")
    {
        $errors[] = "enter valid time";
    }

    if($adate == "")
    {
        $errors[] = "enter valid date";
    }


    //End data validation
    if(count($errors) == 0)
    {

        $user = createNewAppStudent( $aadvisor, $atime, $adate);
        print_r($user);
        if($user <> 1){
            $errors[] = "appointment error";
        }
    }
    if(count($errors) == 0) {
        $successes[] = "appointment successful";
    }
}

require_once("headermenu.php");
echo "
<body>
<div id='wrapper'>

<div id='content'>

<h2>Add Appointment</h2>

<div id='left-nav'>";
/*include("index.php");*/
echo "
</div>

<div id='main'>";



echo "
<div id='regbox'>
<form name='newUser' action='".$_SERVER['PHP_SELF']."' method='post'>

<table>
<tr><td><label>Advisor ID:</label></td><td><input type='text' name='aadvisor' /></td></tr>
<tr><td><label>Time:</label></td><td><input type=text name=atime placeholder=\"hh:mm\"  maxlength=30></td></tr>

<tr><td><label>Date:</label></td><td><input type=text name=adate placeholder=\"yy/dd/mm\" maxlength=30></td></tr>

<tr height='50px'><td colspan='2' align='center'><input type='submit' value='Submit'/></td></tr>






</table>
</form>
</div>

</div>
<div id='bottom'></div>
</div>
</body>
</html>";
?>

<?php

$allrecordsStudent = listActiveStudent();
?>



<html>
<head>
    <!-- Style -- Can also be included as a file usually style.css -->
    <style type="text/css">
        table.table-style-three {
            font-family: verdana, arial, sans-serif;
            font-size: 11px;
            color: #333333;
            border-width: 1px;
            border-color: #3A3A3A;
            border-collapse: collapse;
        }
        table.table-style-three th {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #FFA6A6;
            background-color: #D56A6A;
            color: #ffffff;
        }
        table.table-style-three a {
            color: blue;
            text-decoration: none;
        }

        table.table-style-three tr:hover td {
            cursor: pointer;
        }
        table.table-style-three tr:nth-child(even) td{
            background-color: #F7CFCF;
        }
        table.table-style-three td {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #FFA6A6;
            background-color: #ffffff;
        }
    </style>

</head>
<body>
<table class="table-style-three" align="left" >
    <thead>
    <tr>

        <th> Student ID </th>
        <th> Student Name</ID></th>
    </tr>


    </thead>
    <tbody>

    <?php
    foreach($allrecordsStudent as $displayRecords) { ?>
        <tr>
            <td><?php print $displayRecords['UserID']; ?></td>
            <td><?php print $displayRecords['UserName']; ?></td>


        </tr>
    <?php } ?>
    </tbody>
</table>

</body>
</html>
