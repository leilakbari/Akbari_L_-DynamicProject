<!DOCTYPE html>
<html lang="en">
<?php
require_once('connect.php');
$stmt = $connection->prepare('SELECT * FROM projects ORDER BY title ASC');
$stmt->execute();
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leila Akbari Portfolio</title>
    <script src="https://kit.fontawesome.com/aaac3ee71e.js" crossorigin="anonymous"></script>
    <link href="css/grid.css" rel="stylesheet">

    <link rel="stylesheet" href="css/main.css" type="text/css">
    <script defer type="module" src="js/main.js"></script>


</head>
<body class="wrapper">

<div class="grid-con">
        <header class="col-span-full" id="main-header">
            <div class="xl-col-start-2 l-col-start-3 m-col-start-1 m-col-end-2 col-start-1 col-end-2">
                <a href="logo-portfolio"
                  ><img src="images/Akbari_Leila_Logo.svg" id="logo"
                /></a>
              </div>
            <nav class="nav xl-col-start-6 l-col-start-6 m-col-start-2 m-col-end-8 col-start-2 col-end-5">
                <ul>
                    <li class="nav-item"><a href="index.html">Home</a></li>
                    <li class="nav-item"><a href="index.html">About Me</a></li>
                    <li class="nav-item"><a href="index.php">Projects</a></li>
                    <li class="nav-item"><a href="contact.html">Contact Me</a></li>
                </ul>
            </nav>
        </header>
    </div>

<div class="container2 col-span-full" id="projects">
<div class="card main-scroll-div">
<h1 class="col-span-full col-start-1 m-col-start-1 l-col-start-1 xl-col-start-1">Click on each Project to see the details.</h1>
                <div>
                    <button class="control prev col-start-1"><i class="fas fa-angle-left"></i></button>
                </div>
                <div class="slider-projects cover col-span-full" id="project-slider">
                  <div class="scroll-images">

<?php

while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {

  echo  '<section class="slider-projects" id="project-slider"><h2>'.$row['title'].'</h2><a href="project_detail.php?id='.
$row['id'].
'"> <div class="child col-span-full"><img class="child-img col-span-full l-col-start-1" data-tilt src="images/'.    
        $row['image_url'].   
        '" alt="Project Thumbnail"></a> </div>
        
        </section>';

}

$stmt = null;

?> 
</div>
</div>

<div>
                    <!-- <button class="icon" onclick="scrollr()"><i class="fas fa-angle-right"></i></button> -->
                    <button class="control next col-start-5"><i class="fas fa-angle-right"></i></button>
                </div>  

</div>
</div>

</body>
</html>

 <!--
<p>'.$row['description'].'</p>
-->