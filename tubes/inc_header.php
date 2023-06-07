<?php 
session_start();
include_once("inc/inc_koneksi.php");
include_once("inc/inc_fungsi.php");
function query($sql) {
    global $koneksi;
    $result = mysqli_query($koneksi, $sql);
    return $result;
}
function cari($keyword)
{
    $query = "SELECT * FROM tutors
                WHERE 
                nama LIKE '%$keyword%'
                ";
    return query($query);
}
if (isset($_GET["cari"])) {
    $partners = cari($_GET["keyword"]);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyTechnology.</title>
    <link rel="stylesheet" href="<?php echo url_dasar()?>/css/style.css">
</head>
<body>


        <nav >
            <div class="wrapper">
                <div class="logo"><a href='<?php echo url_dasar()?>'>MyTechnology.</a></div>
                <div class="menu">
                    <ul>
                        <li><a href="<?php echo url_dasar()?>#home">Home</a></li>
                        <li><a href="<?php echo url_dasar()?>#tutors">Tutors</a></li>
                        <li><a href="<?php echo url_dasar()?>#partners">Partners</a></li>
                        <li><a href="<?php echo url_dasar()?>#contact">Contact</a></li>
                        <li>
                        <form action="index.php#tutors" method="get">
    
                                <input class="form-control me-2" type="search" name="keyword" id="search-input" placeholder="Search" autocomplete="off" aria-label="Search" oninput="handleSearchInput()">
                                <button class="btn btn-outline-success" type="submit" name="cari">Search</button>
                            </form></li>
                            <li style="margin-left:30px">
    
                                <?php if(isset($_SESSION['members_nama_lengkap'])){
                                    echo "<a href='".url_dasar()."/ganti_profile.php'>".$_SESSION['members_nama_lengkap']."</a> | <a href='".url_dasar()."/logout.php'>Logout</a>";
                                }else{?>
                                    <a href="pendaftaran.php" class="tbl-biru">Sign Up</a>
                                <?php } ?>
                                
                            </li>
                    </ul>
                </div>
            </div>
        </nav>

    <div class="wrapper">