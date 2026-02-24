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
Dalam membangun aplikasi ini, saya memanfaatkan berbagai macam widget bawaan Flutter untuk menyusun tampilan yang dinamis:

1.  **Stateless & Stateful Widget:** Sebagai fondasi utama dalam mengatur siklus hidup (lifecycle) dan perubahan tampilan pada aplikasi.
2.  **Scaffold:** Digunakan sebagai struktur dasar halaman (menyediakan area untuk AppBar, Body, dan FloatingActionButton).
3.  **ListView & ListTile:** Untuk menampilkan daftar mobil secara vertikal agar rapi dan mudah di-scroll.
4.  **TextField & Form:** Digunakan pada halaman input data untuk menangkap teks dari pengguna saat menambah atau mengedit unit.
5.  **Column & Row:** Widget layouting utama untuk menyusun elemen secara vertikal maupun horizontal.
6.  **Container & Card:** Memberikan dekorasi, margin, padding, serta efek bayangan (elevation) agar tampilan setiap item mobil terlihat modern.
7.  **ElevatedButton & FloatingActionButton:** Sebagai pemicu aksi (tombol) untuk navigasi atau menyimpan data.
8.  **Image.asset / Image.network:** Untuk menampilkan visualisasi unit mobil agar katalog terlihat lebih menarik.
9.  **Navigator:** Mengatur perpindahan antar halaman (push/pop) di dalam aplikasi.

---

### 🛠 Cara Menjalankan Proyek

1. **Persiapan:** Pastikan Flutter SDK sudah terinstall di perangkat Anda.
2. **Clone Repository:**
   ```bash
   git clone [https://github.com/LuthfiDffa/Minpro-1---PAB.git](https://github.com/LuthfiDffa/Minpro-1---PAB.git)


