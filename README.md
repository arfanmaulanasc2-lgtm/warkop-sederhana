# Warkop Sederhana Web

Project Flask untuk kasir Warkop Sederhana, stok bahan, pemakaian bahan, dan prediksi kebutuhan menggunakan Prophet.

## Perbaikan terbaru
- Memperbaiki halaman **Prediksi Prophet** agar tidak error jika session lama masih menyimpan hasil prediksi dari versi sebelumnya yang belum memiliki field `start_stock`.
- Hasil prediksi lama akan direbuild menggunakan periode histori dan horizon yang tersimpan, sehingga kolom Stok Awal dan perhitungan stok kembali tersedia.
- Template Prediksi dibuat lebih aman terhadap data dictionary lama.
- Logika horizon tetap mengikuti jumlah hari yang dipilih user.
- Tidak membuat database baru dan tidak mengubah alur fitur lainnya.

## Menjalankan di Windows
```bat
E:
cd /d E:\Warkop_Sederhana_Web_v6_Revisi_Final
python -m venv venv
venv\Scripts\activate
python -m pip install -r requirements.txt
python app.py
```

Login default: `admin` / `admin123`.
