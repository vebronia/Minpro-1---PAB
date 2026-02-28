# MINPRO 1 PAB - APLIKASI SHOWROOM MOBIL

Aplikasi ini dirancang sebagai platform katalog digital sederhana untuk pengelolaan dan tampilan koleksi mobil di sebuah showroom.

---

## 📝 Deskripsi Aplikasi
Aplikasi Showroom Mobil ini merupakan aplikasi berbasis Flutter yang berfungsi untuk memudahkan pengguna dalam melihat daftar unit mobil yang tersedia di showroom. Fokus utama dari pengembangan aplikasi ini adalah pada implementasi antarmuka pengguna (UI) yang user-friendly, serta manajemen data (CRUD) untuk pengelolaan stok mobil di dalam sistem.

---

## 🚀 Fitur Utama
Aplikasi ini dilengkapi dengan beberapa fitur, di antaranya:

* **Dashboard Utama/Halaman Home:** Menampilkan ringkasan atau sambutan saat pengguna membuka aplikasi.
* **Katalog Mobil:** Daftar unit mobil yang tersedia beserta informasi singkatnya.
* **Tambah Data:** Pengguna dapat memasukkan unit mobil baru ke dalam katalog dengan mengisi form spesifikasi.
* **Lihat Detail:** Menampilkan informasi lengkap setiap unit mobil tanpa memenuhi layar utama.
* **Update/Edit Data:** Fitur untuk memperbarui informasi kendaraan (misal: perubahan harga atau stok) jika terjadi kesalahan input atau ingin pembaruan status.
* **Hapus Data:** Menghapus unit dari katalog jika mobil sudah terjual atau tidak lagi tersedia di showroom.
* **Navigasi Antar Halaman:** Perpindahan layar yang mulus untuk memberikan pengalaman pengguna yang baik.

---

## 🧱 Widget yang Digunakan
Dalam membangun aplikasi ini, saya memanfaatkan berbagai macam widget bawaan Flutter:

1.  **Stateless & Stateful Widget:** Sebagai kerangka utama dalam mengatur logika tampilan yang statis maupun yang dapat berubah (dinamis).
2.  **Scaffold:** Struktur dasar halaman yang menyediakan area untuk AppBar, Body, dan navigasi.
3.  **ListView & ListTile:** Untuk menampilkan daftar mobil dalam bentuk list yang bisa discroll.
4.  **TextField & Form:** Komponen utama untuk menginput teks dari pengguna saat menambah atau mengedit unit.
5.  **Column & Row:** Digunakan untuk menyusun elemen secara vertikal dan horizontal agar tata letak terlihat proporsional.
6.  **Container & Card:** Memberikan dekorasi, *padding*, serta efek bayangan (*elevation*) agar tampilan setiap item mobil terlihat modern dan terpisah dengan jelas.
7.  **ElevatedButton & FloatingActionButton:** Tombol aksi untuk memicu penyimpanan data atau berpindah ke halaman tambah data.
8.  **Navigator (Push/Pop):** Mengatur alur perpindahan antar layar di dalam aplikasi.
9.  **AlertDialog / SnackBar:** (Opsional) Digunakan untuk memberikan konfirmasi saat data berhasil disimpan atau dihapus.

---





