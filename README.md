# Template Proyek Akhir D3/D4 PENS (Typst)

Panduan ini ditulis untuk yang **belum pernah sama sekali pakai Typst**.
Kalau sebelumnya cuma pakai Microsoft Word, tenang — konsepnya beda, tapi
tidak sulit. Ikuti urutan di bawah.

---

## 1. Typst itu apa?

Typst adalah pengganti modern untuk LaTeX/Word: kamu **menulis dokumen
sebagai teks/kode** (file `.typ`), lalu di-*compile* menjadi PDF. Bedanya
dengan Word:

| Word | Typst |
|---|---|
| Klik-klik di toolbar | Tulis kode singkat, mis. `*tebal*` |
| Nomor gambar/tabel bisa kacau kalau ada yang disisipkan | Nomor otomatis, **selalu benar** walau gambar ditambah/dihapus/dipindah |
| Format gampang rusak tanpa sengaja | Format konsisten karena dikontrol oleh kode di bagian atas file |

Template ini sudah dipecah jadi beberapa file supaya kamu bisa **fokus
menulis isi buku** tanpa harus melihat kode "mesin" template:

- `main.typ` — cuma data dirimu + daftar bab. **Inilah file yang paling
  sering kamu buka.**
- `chapters/*.typ` — isi tiap bab, satu file per bab. **Di sinilah kamu
  benar-benar menulis.**
- `template.typ` — kode mesin (cover, heading, penomoran otomatis, dst).
  **Tidak perlu dibuka** kecuali memang ingin mengubah desain.

Kamu tidak mulai dari nol — ketiganya sudah berisi contoh lengkap satu
buku Proyek Akhir (cover, BAB 1–3, Daftar Isi, Daftar Pustaka, dst) yang
tinggal kamu timpa isinya.

---

## 2. Install Typst

Pilih salah satu cara di bawah.

### Cara paling mudah (tanpa install apa-apa)
Buka **https://typst.app** di browser, bikin akun gratis, lalu upload
folder template ini ke situ. Preview langsung muncul di sebelah kanan
setiap kamu mengetik. Cocok untuk coba-coba dulu.

### Cara install di komputer (direkomendasikan untuk pengerjaan serius)

**Windows (lewat winget, Command Prompt/PowerShell):**
```powershell
winget install --id Typst.Typst
```

**macOS (lewat Homebrew):**
```bash
brew install typst
```

**Linux (lewat cargo, atau lihat https://github.com/typst/typst/releases untuk binary siap pakai):**
```bash
cargo install --locked typst-cli
```

Cek berhasil atau tidak:
```bash
typst --version
```

### Editor yang disarankan
Pakai **VS Code** + extension **"Tinymist Typst"** (cari di Extensions
Marketplace). Setelah terpasang, buka file `main.typ`, lalu tekan
`Ctrl+Shift+V` (Windows/Linux) atau `Cmd+Shift+V` (Mac) untuk membuka
preview yang **update otomatis** setiap file disimpan — ini yang bikin
Typst jauh lebih cepat dibanding bolak-balik export PDF di Word.

---

## 3. Isi folder ini

```
Template Buku TA_D3_D4-typ/
├── main.typ                       <- BUKA INI: data diri + daftar bab
├── template.typ                   <- mesin template, JANGAN diedit
├── references.bib                 <- daftar referensi untuk sitasi
├── chapters/                      <- BUKA INI: tulis isi buku di sini
│   ├── abstrak.typ                 <- abstrak Bahasa Indonesia
│   ├── abstract.typ                <- abstrak Bahasa Inggris (italic)
│   ├── kata-pengantar.typ          <- kata pengantar
│   ├── bab1-pendahuluan.typ
│   ├── bab2-kajian-pustaka.typ
│   ├── bab3-desain-sistem.typ
│   ├── bab4-eksperimen-analisis.typ <- PROGRESS DAN FINAL
│   └── bab5-penutup.typ             <- PROGRESS DAN FINAL
└── assets/
    ├── logo.png
    ├── diagram_bagian.png
    └── diagram_cisco.jpeg
```

**Aturan sederhana:** kalau kamu cuma mau menulis/mengedit isi Proyek
Akhir, kamu hanya akan menyentuh `main.typ` dan file-file di `chapters/`.
File `template.typ` berisi kode yang mengatur cover, penomoran otomatis,
dst — biarkan saja, tidak perlu dibuka apalagi diedit. Jangan
pindahkan/hapus folder `assets/` karena gambar-gambar di dalamnya dipakai
sebagai contoh di BAB 3.

> Abstrak ada **dua halaman**: tulis versi Bahasa Indonesia di
> `chapters/abstrak.typ`, lalu terjemahan Inggris (huruf miring) di
> `chapters/abstract.typ`. Isinya cuma judul + paragraf abstrak + kata
> kunci, format paling sederhana dibanding file bab lain. Kedua file ini
> otomatis muncul berurutan tepat setelah halaman pernyataan, tidak perlu
> didaftarkan lewat `#include` apa pun di `main.typ`.

> Setelah dua halaman abstrak ada **Kata Pengantar** di
> `chapters/kata-pengantar.typ`. Sama seperti abstrak, halaman ini muncul
> otomatis di front-matter, tidak perlu didaftarkan di `main.typ`.

---

## 4. Cara melihat hasil (compile ke PDF)

Dari terminal, masuk ke folder ini lalu jalankan:

```bash
typst compile main.typ
```

Ini akan menghasilkan `main.pdf` di folder yang sama. Buka file itu untuk
lihat hasilnya.

**Lebih enak lagi**, pakai mode "watch" — Typst otomatis re-compile setiap
kali file disimpan, tanpa perlu ketik ulang command:

```bash
typst watch main.typ
```

Biarkan command itu jalan di terminal, lalu buka `main.pdf` dengan PDF
viewer yang auto-refresh (di VS Code, Preview macOS, atau Sumatra PDF di
Windows). Setiap kamu save `main.typ`, PDF langsung berubah.

---

## 5. Yang WAJIB kamu edit: data pribadi

Buka `main.typ`, paling atas ada blok `cfg` seperti ini:

```typst
#let cfg = (
  // thesis_type TIDAK ditulis di sini -- "PROYEK AKHIR" ditambahkan
  // otomatis oleh template (lihat blok JENIS UJIAN di bawah).
  title: "JUDUL PROYEK AKHIR",
  author: "NAMA MAHASISWA",
  student_id: "NRP_MAHASISWA",

  promoter_1: "NAMA PEMBIMBING 1",
  promoter_1_nip: "NIP_PEMBIMBING 1",
  promoter_2: "NAMA PEMBIMBING 2",
  promoter_2_nip: "NIP_PEMBIMBING 2",

  examiner_1: "NAMA PENGUJI 1",
  examiner_1_nip: "NIP_PENGUJI 1",
  examiner_2: "NAMA PENGUJI 2",
  examiner_2_nip: "NIP_PENGUJI 2",

  head_of_program: "NAMA KAPRODI",
  head_of_program_nip: "NIP_KAPRODI",

  study_program: "Program Studi Sarjana Terapan",
  department: "Teknik Elektronika",
  institution: "Politeknik Elektronika Negeri Surabaya",
  year: "2026",
  logo_path: "assets/logo.png",
)
```

Ganti nilai di dalam tanda kutip `" "` sesuai data kamu, misalnya:

```typst
  title: "Sistem Deteksi Udang Menggunakan Stereo Vision",
  author: "Akhmad Hendriawan",
  student_id: "2042301045",
```

Cukup edit **blok ini saja** — judul, nama, NRP, pembimbing, penguji, dst
akan otomatis berubah di halaman cover, halaman judul, dan Halaman
Pengesahan sekaligus. **Jangan** cari-cari teks "NAMA MAHASISWA" di tempat
lain dan mengeditnya manual, karena semua sudah ditarik dari `cfg` ini.

> Kamu boleh menulis nilai-nilai ini dengan kapitalisasi normal (huruf
> besar di awal kata) — bagian yang memang harus SEMUA HURUF BESAR di
> cover (judul, program studi, dst) sudah otomatis dibesarkan oleh
> template lewat `#upper(...)`, jadi kamu tidak perlu mengetik kapital.

> Jangan hapus tanda kutip `" "` atau koma `,` di akhir baris — itu bagian
> dari sintaks, bukan dekorasi.

### Jenis ujian
Tepat di bawah `cfg`, ada variabel `jenis_ujian` — inilah yang paling
sering kamu ganti untuk berpindah tahap:

```typst
#let jenis_ujian = "final"      // "proposal" | "progress" | "final"
```

Nama dokumen "PROYEK AKHIR" sudah pasti dan ditambahkan otomatis oleh
template, jadi kamu tidak perlu mengetiknya di mana pun.

| `jenis_ujian` | Judul di cover | Halaman Pengesahan | Bab yang tampil |
|---|---|---|---|
| `"proposal"` | PROPOSAL PROYEK AKHIR | disembunyikan | BAB 1–3 saja |
| `"progress"` | PROGRES PROYEK AKHIR | disembunyikan | BAB 1–5 + Lampiran |
| `"final"` | PROYEK AKHIR | ditampilkan | BAB 1–5 + Lampiran |

Prefix "PROPOSAL"/"PROGRES" ditambahkan otomatis di atas "PROYEK AKHIR",
jadi kamu **tidak perlu** mengetik "PROPOSAL PROYEK AKHIR" manual.

> **Kenapa di proposal tidak ada BAB 4, BAB 5, dan Lampiran?** Ini memang
> disengaja dan sesuai panduan: buku **Proposal** Proyek Akhir hanya
> sampai **BAB 3** (Pendahuluan, Kajian Pustaka, Desain Sistem) — karena
> eksperimen, analisis, dan penutup belum dikerjakan pada tahap proposal.
> Jadi saat `jenis_ujian = "proposal"`, template **otomatis
> menyembunyikan** BAB 4 (Eksperimen dan Analisis), BAB 5 (Penutup), dan
> Lampiran. File babnya tidak dihapus — begitu kamu ganti `jenis_ujian`
> ke `"progress"` atau `"final"`, ketiganya muncul lagi otomatis lengkap
> dengan nomor bab dan Daftar Isi yang menyesuaikan sendiri. Daftar
> Pustaka tetap ikut tampil di semua tahap.

### Jenjang (D3 / Sarjana Terapan)
Masih di blok yang sama, ada variabel `jenjang` yang menentukan **nama
program studi di cover, serta gelar dan baris "Mengetahui" di Halaman
Pengesahan**:

```typst
#let jenjang = "Sarjana"      // "D3" | "Sarjana"
```

| `jenjang` | Cover (halaman 1) | Kalimat gelar (Pengesahan) | Baris "Mengetahui" (Pengesahan) |
|---|---|---|---|
| `"D3"` | PROGRAM STUDI DIPLOMA 3 | ... memperoleh **Gelar Ahli Madya Teknik (A.Md.T.)** | Ketua **Program Studi Diploma 3** Teknik Elektronika |
| `"Sarjana"` | PROGRAM STUDI SARJANA TERAPAN | ... memperoleh **Gelar Sarjana Terapan Teknik (S.T.r.T.)** | Ketua **Program Studi Sarjana Terapan** Teknik Elektronika |

Nama jurusan ("Teknik Elektronika") di cover maupun baris "Mengetahui"
tetap diambil dari `cfg.department`, jadi yang berubah karena `jenjang`
cuma bagian "Program Studi ...".

Catatan: bagian gelar dan "Mengetahui" ada di Halaman Pengesahan yang
hanya muncul saat `jenis_ujian = "final"` (lihat tabel `jenis_ujian` di
atas). Sedangkan teks program studi di cover selalu tampil di semua tahap.

---

## 6. Hal yang TIDAK PERLU (dan TIDAK BOLEH) diedit manual

Beberapa bagian sudah otomatis. Kalau diedit manual, nomornya justru bisa
jadi salah:

- **Daftar Isi** — otomatis dari heading (judul Bab/Sub-bab) yang ada di
  dokumen.
- **Daftar Gambar** & **Daftar Tabel** — otomatis dari caption setiap
  gambar/tabel.
- **Nomor Gambar/Tabel/Persamaan** (`Gambar 3.1`, `Tabel 3.1`, dst) —
  otomatis berdasarkan nomor bab tempat gambar itu berada.
- **Daftar Pustaka & nomor sitasi `[1]`, `[2]`, ...** — otomatis dari
  `references.bib` dan urutan kemunculan `#cite()` di naskah.
- **Nomor halaman** — otomatis 3 tahap: halaman cover (1–2) tanpa nomor,
  Abstrak/Daftar Isi/Gambar/Tabel pakai angka romawi (i, ii, iii, ...),
  lalu BAB 1 dan seterusnya (termasuk Daftar Pustaka) pakai angka arab
  mulai dari 1 lagi. Semua di tengah bawah halaman.

Kalau kamu menambah/menghapus/memindah gambar, tabel, atau referensi,
**semua nomor di atas akan menyesuaikan sendiri** saat di-compile ulang.

---

## 7. Cara menambah Bab / Sub-bab baru

### Menulis di bab yang sudah ada
Buka file yang sesuai di folder `chapters/`, misalnya
`chapters/bab1-pendahuluan.typ`, lalu tulis langsung di situ. Heading
pakai tanda `=`. Makin banyak `=`, makin dalam levelnya:

```typst
== Sub-bab baru           // jadi "1.7 Sub-bab baru" (kalau di Bab 1)
=== Sub-sub-bab           // jadi "1.7.1 Sub-sub-bab"
```

> Untuk heading level teratas (`=`), kamu cukup tulis judulnya biasa,
> misalnya `= Pendahuluan`. Di halamannya sendiri, ini otomatis tampil
> 2 baris dan HURUF BESAR SEMUA:
> ```
> BAB 1
> PENDAHULUAN
> ```
> tapi di Daftar Isi tetap 1 baris: "BAB 1 PENDAHULUAN". Kamu tidak
> perlu mengetik huruf besar atau baris baru sendiri — itu otomatis.

Tulis paragraf biasa di bawahnya dengan fungsi `#bp[...]` (paragraf
dengan indentasi baris pertama, rata kanan-kiri — formatnya konsisten
dengan paragraf lain di dokumen):

```typst
#bp[Ini adalah isi paragraf baru yang akan otomatis terindentasi
dan rata kanan-kiri sesuai format dokumen.]
```

### Catatan/anotasi untuk diri sendiri dengan `#todo[...]`
Saat masih menulis, sering ada hal yang ingin kamu catat untuk dikerjakan
nanti — misalnya "lengkapi data hasil ujicoba" atau "tanya pembimbing soal
ini". Pakai `#todo[...]` untuk menulis catatan seperti itu **langsung di
naskah**:

```typst
#bp[Pada bagian ini sistem menggunakan tiga sensor suhu.
#todo[TODO: tambahkan tabel spesifikasi tiap sensor di sini.]]
```

Catatan `#todo[...]` tampil berwarna abu-abu saat dokumen masih tahap
**draft**, jadi gampang terlihat saat preview, tapi tidak mengganggu
karena warnanya samar. Kamu bisa menaruh `#todo[...]` di mana saja di
dalam file bab.

> ⚠️ **PENTING — sebelum mencetak/mengumpulkan, ubah dokumen ke final.**
> `#todo[...]` **otomatis hilang** (tidak ikut tercetak) hanya kalau
> `document_status = "final"` di `main.typ` (lihat Bagian 12). Selama
> masih `"draft"`, semua catatan TODO-mu **akan ikut muncul di PDF**.
> Jadi setelah semua TODO selesai dikerjakan, set:
>
> ```typst
> #let document_status = "final"
> ```
>
> Ini sekaligus menghilangkan watermark "DRAFT". Pastikan dicek sekali
> lagi: tidak boleh ada teks abu-abu "TODO" yang tersisa di PDF final.

### Menambah Bab baru (BAB 6, BAB 7, dst)
1. Buat file baru di folder `chapters/`, misalnya
   `chapters/bab6-lampiran.typ`, isinya:

   ```typst
   #import "../template.typ": *
   
   = Judul Bab Baru
   
   #bp[Paragraf pertama bab ini ...]
   ```

   > Baris `#import "../template.typ": *` di paling atas **wajib ada**
   > di setiap file bab — itu yang membuat `#bp[...]` dan helper lain
   > bisa dipakai. Tinggal copy dari file bab lain, jangan dihapus.

2. Daftarkan file itu di `main.typ`, di baris paling bawah:

   ```typst
   #include "chapters/bab1-pendahuluan.typ"
   #include "chapters/bab2-kajian-pustaka.typ"
   #include "chapters/bab3-desain-sistem.typ"
   #include "chapters/bab4-eksperimen-analisis.typ"
   #include "chapters/bab5-penutup.typ"
   #include "chapters/bab6-lampiran.typ"   // baris baru
   ```

Selesai — "BAB 6" akan otomatis muncul dengan nomor yang benar, ikut
masuk ke Daftar Isi, dan urutannya mengikuti urutan baris `#include` di
`main.typ`. Mau menukar urutan bab? Tukar saja urutan baris `#include`-nya.

---

## 8. Cara menambah Gambar baru

Karena file babnya ada di dalam folder `chapters/`, path gambarnya perlu
diawali `../` (artinya "naik satu folder dulu") supaya nyambung ke folder
`assets/` di luar `chapters/`:

```typst
#figure(
  image("../assets/nama-file-gambar.png", width: 8cm),
  caption: [Tulis keterangan gambar di sini, tanpa nomor],
) <fig-nama-unik-anda>
```

- Taruh file gambarnya di folder `assets/` (bukan di dalam `chapters/`).
- `<fig-nama-unik-anda>` adalah **label** — nama bebas asal unik
  (huruf kecil, tanpa spasi).
- Jangan tulis "Gambar 3.1" sendiri di caption — itu akan ditambahkan
  otomatis oleh Typst.

Untuk merujuk gambar itu di dalam paragraf:

```typst
#bp[Seperti terlihat pada @fig-nama-unik-anda, sistem ini terdiri dari ...]
```

`@fig-nama-unik-anda` otomatis berubah jadi teks "Gambar 3.1" (atau nomor
berapa pun yang sesuai) — dan **otomatis ikut berubah** kalau urutan
gambar berubah.

---

## 9. Cara menambah Tabel baru

Sama seperti gambar, tapi pakai `table(...)`:

```typst
#figure(
  table(
    columns: (4cm, 4cm),
    table.header([*Kolom A*], [*Kolom B*]),
    [Isi 1], [Isi 2],
    [Isi 3], [Isi 4],
  ),
  caption: [Keterangan tabel, tanpa nomor],
) <tab-nama-unik-anda>
```

Rujuk dengan `@tab-nama-unik-anda` di paragraf, sama seperti gambar.

---

## 10. Cara sitasi / kutipan referensi

Ini bagian yang paling beda dari Word. Ada 2 langkah:

**Langkah 1 — tambahkan referensi ke `references.bib`** (file terpisah,
buka dengan text editor biasa). Formatnya seperti ini:

```bibtex
@article{nama_key_anda,
  author  = {Nama Penulis},
  title   = {Judul Artikel},
  journal = {Nama Jurnal},
  year    = {2024}
}
```

Tiga jenis yang paling sering dipakai: `@article` (jurnal), `@inproceedings`
(makalah seminar/konferensi), `@book` (buku). Sudah ada beberapa contoh siap
pakai di `references.bib` — tinggal ikuti pola yang sama.

**Langkah 2 — kutip di file bab (folder `chapters/`)** dengan `#cite()`:

```typst
#bp[Menurut penelitian sebelumnya #cite(<nama_key_anda>), pendekatan ini terbukti efektif.]
```

Setelah di-compile, ini otomatis jadi "Menurut penelitian sebelumnya [4],
..." (nomornya otomatis, sesuai urutan kemunculan), dan referensinya
otomatis muncul di DAFTAR PUSTAKA di halaman terakhir. Kamu **tidak perlu**
menulis daftar pustaka manual sama sekali.

### Teks panduan di halaman Daftar Pustaka
Di bawah judul DAFTAR PUSTAKA ada teks panduan cara menulis pustaka
(contoh format jurnal, seminar, buku, dst). Itu **hanya panduan**. Saat
naskahmu sudah jadi, sembunyikan dengan mengubah baris ini di `main.typ`:

```typst
#let show_daftar_pustaka_guide = false   // true = tampilkan panduan
```

---

## 11. Halaman 2 (contoh "PROPOSAL PROYEK AKHIR" + kotak keterangan)

Halaman 2 dokumen adalah **panduan visual** yang menunjukkan ukuran/jenis
font yang harus dipakai di setiap bagian cover, ditandai kotak-kotak
abu-abu kecil. Kalau kotak itu mengganggu dan kamu sudah hafal aturannya,
matikan dengan mengubah baris ini di bagian atas `main.typ`:

```typst
#let show_page2_annotations = false   // ganti jadi true untuk menampilkan lagi
```

---

## 12. Watermark status dokumen (DRAFT)

Di bagian atas `main.typ` ada satu baris:

```typst
#let document_status = "final"
```

Nilai ini mengatur watermark diagonal transparan di **seluruh halaman**
dokumen sekaligus menampilkan/menyembunyikan catatan `#todo[...]`:

| Nilai | Watermark | Catatan `#todo[...]` |
|---|---|---|
| `"draft"` | DRAFT | ikut tampil (abu-abu) |
| `"final"` | (tidak ada) | disembunyikan |

> Catatan: halaman Pengesahan, Pernyataan Orisinalitas, dan Pengalihan
> Hak Cipta **tidak** dikontrol oleh `document_status` ini, melainkan oleh
> `jenis_ujian` — ketiganya hanya muncul saat `jenis_ujian = "final"`
> (lihat tabel di Bagian 5).

Kolom terakhir penting: catatan `#todo[...]` yang kamu tulis di naskah
(lihat Bagian 7) **hanya hilang saat `"final"`**. Jadi sebelum
mencetak/mengumpulkan, pastikan nilainya `"final"` supaya tidak ada
catatan TODO yang ikut tercetak.

Contoh saat masih tahap draf:

```typst
#let document_status = "draft"
```

Watermark dibuat sangat transparan supaya teks di bawahnya tetap mudah
dibaca. Karena warnanya abu-abu muda, watermark ini paling kelihatan di
halaman berlatar putih — di halaman cover biru gelap (halaman 1),
watermark tetap ada tapi kontrasnya rendah karena desain warnanya memang
dioptimalkan untuk latar putih.

---

## 13. Troubleshooting (masalah yang sering muncul)

**"file not found" / gambar tidak muncul**
Path gambar di `image("../assets/...")` harus relatif terhadap lokasi
file yang menulisnya. File bab ada di dalam folder `chapters/`, jadi
butuh `../` di depan supaya nyambung ke folder `assets/` di luar
`chapters/`. Huruf besar/kecil pada nama file juga ikut dihitung.

**Error "file not found" menyebut `template.typ`**
Berarti file bab kamu tidak menemukan `template.typ`. Pastikan baris
`#import "../template.typ": *` ada di paling atas file bab itu, dan
file bab tetap berada di dalam folder `chapters/` (jangan dipindah ke
folder lain).

**Tulisan jadi font aneh / kotak-kotak**
Typst butuh font "Liberation Serif" atau "Times New Roman" terpasang di
sistem. Kalau tidak ada, Typst otomatis pakai font pengganti — hasilnya
tetap rapi, hanya beda tipis dari Times New Roman asli.

**Compile gagal, ada tulisan merah di terminal**
Baca pesan errornya — biasanya menyebutkan nomor baris (`main.typ:123:45`)
dan alasannya (kurung tidak ditutup, tanda kutip lupa, dst). Typst cukup
jelas dalam menunjukkan letak masalahnya, beda dengan Word yang kadang
rusak diam-diam.

**Nomor gambar/tabel terasa salah setelah saya tambah gambar baru**
Compile ulang dulu (`typst compile main.typ`). Typst kadang perlu dua kali
proses internal untuk menyinkronkan semua nomor — ini otomatis terjadi
saat compile biasa, tidak perlu tindakan tambahan dari kamu.

---

## 14. Belajar lebih lanjut

- Dokumentasi resmi (lengkap, ada contoh interaktif): **https://typst.app/docs**
- Coba-coba kode tanpa install apa pun: **https://typst.app**

Kalau ragu mengubah sesuatu, **copy dulu `main.typ` jadi `main_backup.typ`**
sebelum eksperimen — sama seperti kebiasaan "Save As" di Word.
