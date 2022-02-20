<?php
$name = filter_input(INPUT_POST, 'name');
$email = filter_input(INPUT_POST, 'email');
if (!empty($name)){
if (!empty($email)){
$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "wadl";
// Create connection
$con = new mysqli ($host, $dbusername, $dbpassword, $dbname);


$username = mysqli_real_escape_string($con,$_POST['name']);
$tmp = $username;
$inc = 1;
$valid = false;

// lookup if the username is in use
$qid = mysqli_query($con,"select AnnotatorID from Annotator where username='$username'");
if(mysqli_num_rows($qid) == 0) $valid = true;

// if it is in use, keep looking up until a valid username is found 
while(!$valid) {
    $username = $tmp . $inc; // append number
    $qid = mysqli_query($con,"select AnnotatorID from Annotator where username='$username'");
    if(mysqli_num_rows($qid) == 0) $valid = true;
    $inc++;

    //optional
    if($inc>1000) die("Too many John Tory's"); 
}

$chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
 $password = substr( str_shuffle( $chars ), 0, 8 );

// insert user
mysqli_query($con,"INSERT INTO annotator (name,email,UserName,Password,LeaderID)
values ('$name','$email','$username','$password','33')");
echo "done";



}
else{
    echo "name should not be empty";
    die();
    }}
else{
echo "Email should not be empty";
die();
}


?>