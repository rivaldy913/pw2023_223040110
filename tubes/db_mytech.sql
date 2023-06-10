-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2023 at 01:45 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mytech`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'rivaldy', 'b228cc7b386e41b87456d99243eab52b');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kutipan` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `kutipan`, `isi`, `tgl_isi`) VALUES
(8, 'Tetap Fokus dan Fokus', 'Belajar Programming #MyTechnology', '<p><img src=\"../gambar/903ce9225fca3e988c2af215d4e544d3.jpg\" data-filename=\"903ce9225fca3e988c2af215d4e544d3.jpg\" class=\"note-float-left\" style=\"float: left;\"><span style=\"font-family: var(--bs-font-sans-serif); font-size: 1rem;\">Kita taunya sebuah aplikasi atau program tercipta dari codingan seorang programmer yang menggunakan suatu bahasa pemrograman. Seperti layaknya seorang filsuf yang bertanya tentang alam semesta, pernah ga kalian berpikir darimana datangnya bahasa pemrograman? Bagi yang penasaran yuk kita simak cerita bagaimana sejarah bahasa pemrograman dibuat.</span></p><p><span style=\"font-family: var(--bs-font-sans-serif); font-size: 1rem;\">Terciptanya bahasa pemrograman beriringan dengan sejarah mesin dan komputer. Awal mula bahasa pemrograman dimulai dari Antikythera yang berasal dari Yunani kuno. Antikythera adalah kalkulator yang menggunakan beberapa tuas dan konfigurasi untuk menjalankanya. Pada tahun 1200an Ismail Al-Jazari, seorang ilmuwan pada masa kejayaan Islam membangun sebuah mesin bernama Automata, sebuah robot burung merak yang bergerak dengan menggunakan hydropower (aliran air).</span></p><p>Cikal bakal bahasa pemrograman pertama kali muncul pada tahun 1822, sebuah mesin bernama Difference Engine diciptakan oleh Charles Babbage, mahasiswa di universitas Cambridge Inggris. Namun mesin buatan Babbage hanya bisa mengeluarkan satu jenis output. Barulah 10 tahun kemudian Charles Babbage mengembangkan mesin pengolah data itu hingga mencapai versi kedua tahun 1849. Perjuangan Babbage diteruskan oleh anaknya, Henry Prevost. Prevost membuat kopian dari perhitungan algoritma mesinnya dan mengirim ke berbagai institusi di dunia.</p><p>Dengan tersebarnya algoritma mesin Prevost, perkembangan semakin terjadi. Di tahun 1854, George Boole menemukan sistem logika yang disebut logika Boole. Logika ini menyatakan hubungan hubungan lebih besar, lebih kecil, sama dengan dan tidak sama dengan.</p><p>Pengembangan logika ini terus berkembang dari tahun ke tahun hingga seorang ilmuwan Jerman bernama Konrad Zuse membuat sebuah mesin kalkulator biner dengan nama Z-1 pada tahun 1935. Kemudian pada tahun 1939, Zuse dipanggil untuk mengabdi pada militer dengan membuat Z-2 dan dilanjutkan dengan Z-3 dan Z-4.</p><p>Ketika sedang mengembangkan Z-4, Zuse sadar bahwa bahasa pemrograman dengan bahasa mesin terlalu rumit. Bahasa mesin ini tergolong bahasa tingkat rendah, karena hanya kumpulan kode 0 dan 1, atau ya dan tidak. Setelah melakukan penelitian selama setahun, pada tahun 1945 barulah tercipta bahasa pemrograman tingkat tinggi pertama didunia, yaitu Plankalkul (Plan Kalkulus). Dengan Plankalkul terbukti bisa meciptakan mesin catur komputer pertama didunia.</p><p>Short Code dicetuskan pada tahun 1949 sebagai bahasa pemrograman tingkat tinggi pertama untuk mengembangkan komputer elektronik yang diciptakan oleh John Mauchly. Namun programnya harus ditranslasikan ke dalam bahasa mesin setiap dijalankan, ini membuat kinerja program dalam memproses kode memakan waktu yang cukup lama.</p><p>Alick Glennie dari Universitas Manchester mengembangkan bahasa pemrograman Autocode di awal tahun 1950an. Sebagai bahasa pemrograman, bahasa ini menggunakan kompiler yang mengkonversi secara otomatis bahasanya ke bahasa mesin. Awal bahasa pemrograman pertama digunakan pada tahun 1952 untuk komputer Mark 1 di Universitas Manchester.</p><p>John W. Backus membuat proposal ke atasannya di IBM (International Business Machines Corporation) untuk mengembangkan sebuah bahasa alternatif yang lebih praktis dari bahasa assembly untuk memprogram IBM 704 mainframe computer dengan nama Formula Translation atau yang kita kenal dengan FORTRAN. Kompiler FORTRAN berhasil diselesaikan pada April 1957.</p><p>Selanjutnya ada FLOW-MATIC yang dibuat oleh Grace Hopper. FLOW-MATIC resmi dipublikasikan pada tahun 1959 dan menbawa pengaruh besar untuk pembuatan bahasa pemrograman COBOL (Common Business Oriented Language), bahasa pemrograman yang pada tahun 1959 banyak digunakan pada mainframe dan komputer mini.</p><p>Perkembangan bahasa pemrograman semakin pesat dengan adanya bahasa C. Dennis Ritchie dan Brian Kernighan menciptakan C awalnya untuk mesin DEC PDP-11. Dengan adanya bahasa C banyak bahasa baru bermunculan seperti C++, Java, C#, dan banyak lagi. Bahasa pemrograman akan terus berevolusi menjadi semakin mudah digunakan seiring dengan berkembangnya jaman.</p>', '2023-06-07 12:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `judul`, `isi`, `tgl_isi`) VALUES
(1, 'MyTechnology', 'Design by Rivaldy.', '2023-06-05 09:22:01'),
(2, 'About', '<span style=\"font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(222, 222, 222);\">Website seputar Technology yang menjelaskan sebuah Bahasa Pemrograman.</span>', '2023-06-05 09:23:18'),
(3, 'Contact', 'MyTechnology@gmail.com', '2023-06-05 09:23:51'),
(4, 'Social', '<b>Instgram&nbsp; : MyTechnology_</b>', '2023-06-05 09:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL,
  `token_ganti_password` text,
  `tgl_isi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `email`, `nama_lengkap`, `password`, `status`, `token_ganti_password`, `tgl_isi`) VALUES
(11, 'Daffa.223040048@mail.unpas.ac.id', 'Muhammad Daffa Musyaffa', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, '2023-06-06 11:42:26'),
(12, 'Dzikri.223040072@mail.unpas.ac.id', 'Dzikri Setiawan', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, '2023-06-06 11:43:36'),
(13, 'Rizal.223040125@mail.unpas.ac.id', 'Rizal Fahla', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, '2023-06-06 11:44:47'),
(14, 'Fadhil.223040105@mail.unpas.ac.id', 'Fadhil Rizki Fauzan', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, '2023-06-06 11:45:48'),
(15, 'Rivaldy.223040110@mail.unpas.ac.id', 'Rivaldy Novyan Dwi Putra', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, '2023-06-06 11:47:40'),
(16, 'jhons@gmail.com', 'Jhon Kevin Steven Keny Bond', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, '2023-06-07 15:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `nama`, `foto`, `isi`, `tgl_isi`) VALUES
(1, 'Ruby', 'partners_1685963612_ruby.png', '<div>Ruby adalah bahasa pemrograman berbasis skrip yang berorientasi pada objek. Ruby bersifat open source, biasanya digunakan untuk membangun dan mengembangkan aplikasi web yang sederhana dan cepat.</div><div><br></div><div>Ruby dikembangkan oleh programmer asal Jepang bernama Yukihiro Matsumoto (Matz). Pada tahun 1993, Ia mulai membangun Ruby dengan tujuan menciptakan bahasa pemrograman yang dapat ditulis secara efisien.</div><div><br></div><div>Matz menggabungkan bahasa favoritnya, yakni Perl, Smaltalk, Eiffel, Ada, serta Lips untuk membangun bahasa pemrograman baru yang seimbang dari segi imperatif dan fungionalitasnya.</div>', '2023-06-05 11:13:32'),
(2, 'Python', 'partners_1685963601_Python.png', '<p>Python adalah bahasa pemrograman serbaguna yang bisa dijalankan pada hampir semua arsitektur sistem, dan bisa digunakan untuk berbagai aplikasi di banyak bidang, mulai dari web development hingga machine learning.</p><p>Selain mudah dipelajari, Python juga populer karena keserbagunaannya. Penggunaan bahasa ini mencakup berbagai bidang, termasuk data science, web development, dan machine learning. Selain itu, Python adalah bahasa cross-platform, yang berarti bisa berjalan di berbagai OS seperti Windows, Linux, dan macOS.</p>', '2023-06-05 11:13:21'),
(3, 'JAVA', 'partners_1685963589_Java.png', '<p>JavaScript adalah bahasa pemrograman yang digunakan dalam pengembangan website agar lebih dinamis dan interaktif. Kalau sebelumnya kamu hanya mengenal HTML dan CSS, nah sekarang kamu jadi tahu bahwa JavaScript dapat meningkatkan fungsionalitas pada halaman web. Bahkan dengan JavaScript ini kamu bisa membuat aplikasi, tools, atau bahkan game pada web.</p><p>Bicara teknis, JavaScript atau kita singkat menjadi JS merupakan bahasa pemrograman jenis interpreter, sehingga kamu tidak memerlukan compiler untuk menjalankannya. JavaScript memiliki fitur-fitur seperti berorientasi objek, client-side, high-level programming, dan loosely typed.</p><p><br></p>', '2023-06-05 11:13:09'),
(4, 'PHP', 'partners_1685963577_php.png', '<p>PHP  (PHP: Hypertext Preprocessor) adalah sebuah bahasa pemrograman server side scripting yang bersifat open source.</p><p>Sebagai sebuah scripting language, PHP menjalankan instruksi pemrograman saat proses runtime. Hasil dari instruksi tentu akan berbeda tergantung data yang diproses.</p><p>PHP merupakan bahasa pemrograman server-side, maka script dari PHP nantinya akan diproses di server. Jenis server yang sering digunakan bersama dengan PHP antara lain Apache, Nginx, dan LiteSpeed. </p>', '2023-06-05 11:12:57'),
(7, 'HTML', 'partners_1685963565_html.png', '<p>HTML adalah bahasa standar pemrogaman yang digunakan untuk membuat halaman website, yang diakses melalui internet. Singkatan dari \"Hypertext Markup Language\" atau \"bahasa markup\".</p><p>Dilansir Techterms, \"Hypertext\" mengacu pada hyperlink yang mungkin terdapat dalam halaman HTML. Bahasa markup ini mengacu pada cara tag yang digunakan, untuk menentukan tata letak halaman dan elemen di dalam halaman.</p><p>HTML disusun berdasar kode dan simbol tertentu, yang dimasukkan dalam sebuah file atau dokumen. Sehingga bisa ditampilkan pada layar komputer. Dan bisa dipahami oleh para pengguna internet.</p><p>Memahami setiap kata yang terkandung, hypertext sendiri dimaksudkan sebagai metode yang digunakan untuk berpindah laman web ke laman lain. Usai mengklik tulisan atau simbol yang muncul di halaman website.</p><p>Lalu istilah markup, diartikan sebagai suatu hal yang dilakukan tag HTML terhadap teks didalamnya. Contoh jika mengetik suatu teks dengan tanda tag  . Maka teks tersebut akan muncul dengan huruf tebal atau bold di laman website.</p>', '2023-06-05 11:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `nama`, `foto`, `isi`, `tgl_isi`) VALUES
(2, 'Programming Dirumah Rafif', 'tutors_1685963523_dirumahafif.png', '<p><span style=\"color: rgb(15, 15, 15); font-family: Roboto, Arial, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Channel Programming di Rumahrafif merupakan Channel YouTube yang membahas tentang pemrograman yang bisa kamu ikuti dengan cukup #dirumahaja. Banyak topik pemrograman yang bisa kita sama-sama pelajari dan diskusikan di channel ini. \r\n\r\nChannel ini akan senantiasa melakukan update terhadap perkembangan yang terjadi di dunia pemrograman. Kita akan belajar dari Web Programming, Mobile Programming, juga dengan Data Anlytics, baik itu menggunakan python ataupun yang lainnya.</span><br></p>', '2023-06-05 11:12:03'),
(3, 'Cara Fajar', 'tutors_1685963405_carafajar.jpg', '<p><span style=\"color: rgb(15, 15, 15); font-family: Roboto, Arial, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Channel ini menyediakan konten sharing tutorial pembuatan website/website development, website programming untuk pemula dengan cara yang mudah dan sederhana dalam bahasa Indonesia\r\n\r\nMateri khusus yang disinggung di channel ini seputar: Tutorial HTML, Tutorial CSS, Tutorial Javascript, Tutorial CSS 3, Tutorial jQuery, Tutorial MySQL, Tutorial Bootstrap dan Tutorial PHP</span><br></p><p><br></p><p><br></p>', '2023-06-05 11:10:06'),
(4, 'Dea Afrizal', 'tutors_1685963417_deaafrizal.jpg', '<p>Seorang Youtuber asal Indonesia yang menarik banyak perhatian. Sebagai seorang programmer dia memberikan ilmu tentang dunia coding yang bisa kamu nikmati melalui channel resmi miliknya.</p><p>Di sana kamu akan belajar banyak tentang pengertian coding dan bagaimana cara menjadi seorang programmer dan lain-lain. Dea Afrizal sendiri adalah seorang programmer yang bisa dijadikan contoh dalam belajar dunia coding untuk mengasah skill dan kemampuan.</p><p>Dea Afrizal juga membahas bahasa pemograman seperti HTML/CSS, JavaScript, Phython, C++, PHP, hingga SQL. Setiap bahasa pemrograman tersebut pasti memiliki kelebihan dan kelemahan masing-masing.</p>', '2023-06-05 11:10:19'),
(5, 'Web Programming Unpas', 'tutors_1685963473_wpu.jpg', '<p>Sandhika Galih adalah seorang dosen, developer dan content creator. Sebagai seorang dosen, dia pernah mengajar Web Programmer & Graphic Designer di SDTC Unpas Bandung dan juga pernah mengajar di Universitas Widyatama Bandung. Kemudian sejak tahun 2008, Sandhika Galih mengajar di Program Studi Teknik Informatika Universitas Pasundan dan mengajar Internet dan Web Technology dan Web Programming hingga sekarang. </p><p>Sandhika Galih mengenyam pendidikan S1 di Ilmu Komputer di Universitas Katolik Parahyangan (2002-2004) dan Teknik Informatika Universitas Pasundan Bandung (2004-2008). Kemudian Master Teknologi Informasi di Institut Teknologi Bandung (2009-2011). Dikutip dari profil LinkedInnya, selain menjadi dosen dan YouTuber, Sandhika Galih juga aktif melakukan riset tentang Web Technology, Multimedia, Cognitive Science and UI/UX Design dan sudah menerbitkan 9 publikasi. </p>', '2023-06-07 13:17:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
