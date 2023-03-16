<?php 
// Array Associative
// Arrray yang indexnya adalah string yang kita buat sendiri
$mahasiswa = 
[
    [
    'nama' => 'Rivaldy',
    'makanan' => ['🍟'],
    'peliharaan' => '🦁'
    ],
    [
    'nama' => 'Fadhil',
    'makanan' => ['🌭', '🍗'],
    'peliharaan' => '🐺'
    ],
    [
    'nama' => 'Daffa',
    'makanan' => ['🍕'],
    'peliharaan' => '🐱'
    ]   
    [
    'nama' => 'Rizal',
    'makanan' => ['🍜'],
    'peliharaan' => '🙈'
    ],
    [
    'nama' => 'Apgi',
    'makanan' => ['🍣'],
    'peliharaan' => '🐷'
    ]
];
?>     
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Latihan 3</title>
</head>
<body>
    <h2>Daftar Mahasiswa</h2>
 <?php foreach($mahasiswa as $ms) { ?>
    <ul>
        <li>Nama : <?= $ms ['nama']; ?></li>
        <li>Makanan Favorit :
            <?php foreach (sms ['makanan'] as $m) {
                echo $m;
            }?>
        <li>Peliharaan : <?= $ms ['peliharaan']; ?></li>
    </ul>
 <?php } ?>
</body>
</html>