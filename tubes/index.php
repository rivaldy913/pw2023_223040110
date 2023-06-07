<?php include_once("inc_header.php") ?>
<!-- untuk home -->

<section id="home">
    <img src="<?php echo ambil_gambar('8') ?>" style="border-radius: 20px; margin-top: 60px" />
    <div class="kolom" style="margin-left: 100px" >
        <p class="deskripsi"><?php echo ambil_kutipan('8') ?></p>
        <h2><?php echo ambil_judul('8') ?></h2>
        <?php echo maximum_kata(ambil_isi('8'), 30) ?>
        <p><a href="<?php echo buat_link_halaman('8') ?>" class="tbl-pink">Pelajari Lebih Lanjut</a></p>
    </div>
</section>

<!-- untuk tutors -->
<section id="tutors">
    <div class="tengah">
        <div class="kolom">
            <p class="deskripsi">Our Top Tutors</p>
            <h2>Tutors</h2>
            <h3>Rekomendasi Youtuber Untuk Belajar Programming</h3>
        </div>

        <div class="tutor-list" id="search-results">
    <?php
    if (isset($_GET["cari"])) {
        $keyword = $_GET["keyword"];
        $tutors = cari($keyword);
    } else {
        $sql1 = "SELECT * FROM tutors ORDER BY id ASC";
        $q1 = mysqli_query($koneksi, $sql1);
        $tutors = mysqli_fetch_all($q1, MYSQLI_ASSOC);
    }

    if (!empty($tutors)) {
        foreach ($tutors as $tutor) {
            ?>
            <div class="kartu-tutor">
                <a href="<?php echo buat_link_tutors($tutor['id']) ?>">
                    <img src="<?php echo url_dasar() . "/gambar/" . tutors_foto($tutor['id']) ?>" />
                    <p><?php echo $tutor['nama'] ?></p>
                </a>
            </div>
        <?php
        }
    } else {
        echo "No tutors found.";
    }
    ?>
</div>

    </div>
</section>

<!-- untuk partners -->
<section id="partners">
    <div class="tengah">
        <div class="kolom">
            <p class="deskripsi">Our Top Bahasa Pemrograman</p>
            <h2>Bahasa Pemrograman</h2>
            <h3>Bahasa Pemrograman yang cocok untuk dipelajari.</h3>
        </div>

        <div class="partner-list">
            <?php
            $sql1   = "select * from partners order by id asc";
            $q1     = mysqli_query($koneksi, $sql1);
            while ($r1 = mysqli_fetch_assoc($q1)) {
            ?>
                <div class="kartu-partner">
                    <a href="<?php echo buat_link_partners($r1['id'])?>">
                    <img src="<?php echo url_dasar()."/gambar/".partners_foto($r1['id'])?>"/>
                    </a>
                </div>
            <?php
            }
            ?>


        </div>
    </div>
</section>
<?php include_once("inc_footer.php") ?>