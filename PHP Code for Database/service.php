<?php
// connection to DB
$server_name = "localhost";
$user_name = "u137707472_gabecelaya23";
$password = "Pg744565";
$dbname = "u137707472_SnipSnapData";


// Adding the variables to make the connection
$conn = mysqli_connect($server_name, $user_name, $password, $dbname);


// If no connection die and give error
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
//echo "Connected successfully"; 

$sql = "SELECT id, name, description, shop, image1, image2, image3 FROM FullBusinessProfiles";
//echo " Success";

if ($result = mysqli_query($conn, $sql)){
   
$resultArray = array();
$tempArray = array();
// echo " Doing the job";
if (mysqli_num_rows($result) > 0) {
    //echo "reached here";
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
      $tempArray = $row;
      array_push($resultArray, $tempArray);
      
    }
    echo json_encode($resultArray);
} else {
  // echo no results this echo can be deleted
    echo "0 results";
}
}


mysqli_close($conn);




?>