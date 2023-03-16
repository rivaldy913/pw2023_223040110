<?php 
$film = [
    ['poster' => 'dilan1990.jpg',
    'judul' => 'Dilan 1990',
    'tahun' => '2018',
    'genre' => 'Drama Romantiz',
    'pemeran utama' => ['Iqbaal Ramadhan', 'Vanesha Prescilla'],
    'sutradara' => 'Fajar Bustomi '
    ],
    ['poster' =>'orangkayabaru.jpg',
    'judul' => 'Orang Kaya Baru',
    'tahun' => '2019',
    'genre' => 'Drama Komedi',
    'pemeran utama' =>['Raline Shah', 'Lukman Sardi', 'Cut Mini', 'Derby Romero', 'Fatih Unru', 'Refal Hady'],
    'sutradara' => 'Ody C Harahap'
    ],
    ['poster' =>'mencuriradensaleh.jpg',
    'judul' =>'Mencuri Raden Saleh',
    'tahun' => '2022',
    'genre' => 'Drama Komedi',
    'pemeran utama' => ['Iqbaal Ramadhan', 'Angga Yunanda', 'Rachel Amanda', 'Umay Shahab', 'Aghniny Haque', 'Ari Irham'],
    'sutradara' => 'Angga Dwimas Sasongko'
    ],
    ['poster' => 'avengers.jpg',
    'judul' => 'Avengers End Game',
    'tahun' => '2019',
    'genre' => 'Adventure',
    'pemeran utama' => ['Robert Downey Jr', 'Chris Evans', 'Mark Ruffalo', 'Chris Hemsworth', 'Scarlett Johansson', 'Jeremy Renner', 'Don Cheadle', 'Don Cheadle,'],
    'sutradara' => 'Anthony'
    ],
    ['poster' =>'dearnathan.jpg',
    'judul' => 'Dear Nathan : Thank You Salma',
    'tahun' => '2022',
    'genre' => 'Drama Romantiz',
    'pemeran utama' => ['Amanda Rawles', 'Jefri Nichol', 'Ardhito Pramono'], 
    'sutradara' => 'Kuntz Agus'
    ],      
]
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>film</title>
</head>
<body>
    <h2>Daftar Film</h2>
    <?php  foreach($film as $f) {?>
    <ul>
        <li>
            <img src="image/<?= $f['poster']; ?>"width="120" height="200" >
        </li>
        <li>Judul : <?= $f['judul']; ?></li>
        <li>Tahun : <?= $f['tahun']; ?></li>
        <li>Genre : <?= $f['genre']; ?></li>
        <li>Pemeran Utama : 
            <?php foreach($f['pemeran utama'] as $p){
                echo $p;
            } ?>
        </li>
        <li>Sutradara : <?= $f['sutradara']; ?></li>
    </ul>
    <?php } ?>
</body>
</html>