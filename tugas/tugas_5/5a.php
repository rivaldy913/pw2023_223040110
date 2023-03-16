<?php 
$mahasiswa = [
    ['nama' => 'Rivaldy Novyan Dwi Putra',
    'npm' => '223040110',
    'email' => 'Rivaldy.223040110@mail.unpas.ac.id',
    'jurusan' => 'Teknik Informatika',
    'foto' => 'rivaldy.jpeg'
    ],
    ['nama' => 'Moch Zuhdi Maulana Nabilah',
    'npm' => '223040101',
    'email' => 'Zuhdi.223040101@mail.unpas.ac.id',
    'jurusan' => 'Teknik Informatika',
    'foto' => 'zuhdi.jpeg'
    ],
    ['nama' => 'Muhammad Marsa Nurjaman',
    'npm' => '223040083',
    'email' => 'Marsa.223040083@mail.unpas.ac.id',
    'jurusan' => 'Teknik Informatika',
    'foto' => 'marsa.jpeg'
    ],
    ['nama' => 'Muhammad Daffa Riyadi',
    'npm' => '223040120',
    'email' => 'Daffa.223040120@mail.unpas.ac.id',
    'jurusan' => 'Teknik Informatika',
    'foto' => 'daffarb.jpeg'
    ],
    ['nama' => 'Muhammad Daffa Mussyaffa',
    'npm' => '223040048',
    'email' => 'Daffa.223040048@mail.unpas.ac.id',
    'jurusan' => 'Teknik Informatika',
    'foto' => 'dafsus.jpeg'
    ],
    ['nama' => 'Kaka Praditha Putra',
    'npm' => '223040087',
    'email' => 'Kaka.223040087@mail.unpas.ac.id',
    'jurusan' => 'Teknik Informatika',
    'foto' => 'kaka.jpeg'
    ],
    ['nama' => 'Muhammad Alfath Septian',
    'npm' => '223040014',
    'email' => 'Alfath.223040014@mail.unpas.ac.id',
    'jurusan' => 'Teknik Informatika',
    'foto' => 'afat.jpeg'
    ],
    ['nama' => 'Arley Prajaya Gunawan',
    'npm' => '223040106',
    'email' => 'Arley.223040106@mail.unpas.ac.id',
    'jurusan' => 'Teknik Informatika',
    'foto' => 'arley.jpeg'
    ],
    ['nama' => 'Chandra Ardiansyah',
    'npm' => '223040160',
    'email' => 'Chandra.223040160',
    'jurusan' => 'Teknik Informatika',
    'foto' => 'chandra.jpeg'
    ],
    ['nama' => 'Dzikri Setiawan',
    'npm' => '223040072',
    'email' => 'Dzikri.223040072@mail.unpas.ac.id',
    'jurusan' => 'Teknik Informatika',
    'foto' => 'dzikri.jpeg'
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
    <h2>Daftar Mahasiswa Terbaik</h2>
    <?php  foreach($mahasiswa as $mhs) {?>
    <ul>
        <li>
            <img src="image/<?= $mhs['foto']; ?>"width="150" height="200" >
        </li>
        <li>Nama : <?= $mhs['nama']; ?></li>
        <li>NPM : <?= $mhs['npm']; ?></li>
        <li>Email : <?= $mhs['email']; ?></li>
        <li>Jurusan : <?= $mhs['jurusan']; ?></li>
    </ul>
    <?php } ?>
</body>
</html>