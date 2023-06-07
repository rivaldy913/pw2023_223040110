// File: script.js

// Fungsi untuk mengirim permintaan AJAX
function sendRequest(searchQuery) {
  // Buat objek AJAX
  var xhttp = new XMLHttpRequest();

  // Atur fungsi yang akan dijalankan setiap kali status AJAX berubah
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      // Tangkap hasil response dari server
      var response = this.responseText;

      // Update konten halaman dengan hasil pencarian
      document.getElementById("search-results").innerHTML = response;
    }
  };

  // Kirim permintaan AJAX ke server
  xhttp.open("GET", "search.php?q=" + searchQuery, true);
  xhttp.send();
}

// Fungsi untuk menangani perubahan input pencarian
function handleSearchInput() {
  // Ambil nilai input pencarian
  var searchQuery = document.getElementById("search-input").value;

  // Kirim permintaan AJAX hanya jika ada nilai input pencarian
  if (searchQuery.length > 0) {
    sendRequest(searchQuery);
  } else {
    // Kosongkan hasil pencarian jika input pencarian kosong
    document.getElementById("search-results").innerHTML = "";
  }
}
