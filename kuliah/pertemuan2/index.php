<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pertemuan 2</title>
</head>
<body>
    <h1> 
    <?php echo 'Hello, World!'; ?>
</h1>
<p>
    <?php echo 'Pemrograman Web'; ?>
</p>
<p>
    <?php echo "Jum'at"; ?>
</p>
<p>
    <?php echo '"PENGUMUMAN": Hari Ini Libur!'; ?>
</p>
<p>
    <?php echo "\"PENGUMUMAN\": Hari Jum'at Libur!"; ?>
</p>
<p>
    <?php echo '"PENGUMUMAN"' . ": Hari Jum'at Libur!"; ?>
</p>

<?php
    $nama_depan = 'Rivaldy';
    $nama_belakang = 'Novyan Dwi Putra';
?>

<hr>
<h2> 
    <?php echo "Hello, $nama_depan $nama_belakang!"; ?>
</h2>
</body>
</html>