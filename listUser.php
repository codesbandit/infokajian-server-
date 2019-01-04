<?php
include_once ("koneksi.php");

$query = "SELECT * FROM users  ORDER BY id DESC";

$result =$con->query($query);

$num_result= $result->num_rows;

if ($num_result>0) {
  // code...
  $data = array();

  while ($row = $result->fetch_assoc()) {
    // code...
    extract($row);
    $data[] = $row;
  }
  $show= json_encode($data);
  echo $show;
}else {
  echo "Data Kosong";
}

$result->free();
mysqli_close($con);
 ?>
