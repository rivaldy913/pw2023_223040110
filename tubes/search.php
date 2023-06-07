<?php
include_once("inc/inc_koneksi.php");

// Memeriksa apakah parameter pencarian (q) diberikan
if (isset($_GET['q'])) {
  $searchQuery = $_GET['q'];

  // Lakukan proses pencarian data berdasarkan query yang diberikan
  $query = mysqli_query($koneksi, "SELECT * FROM tutors WHERE nama LIKE '%$searchQuery%'");

  // Buat tampilan hasil pencarian
  if (mysqli_num_rows($query) > 0) {
    echo "<div class='tutor-list'>";
    
    while ($row = mysqli_fetch_assoc($query)) {
      ?>
      <div class="kartu-tutor">
        <a href="<?php echo buat_link_tutors($row['id']) ?>">
          <img src="<?php echo url_dasar() . "/gambar/" . tutors_foto($row['id']) ?>" />
          <p><?php echo $row['nama'] ?></p>
        </a>
      </div>
      <?php
    }
    
    echo "</div>";
  } else {
    echo "<div class='search-result'>No results found.</div>";
  }
}
?>
