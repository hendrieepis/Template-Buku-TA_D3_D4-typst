// Jangan hapus baris import ini -- ini yang membuat #bp[...], #sumber[...],
// dan helper lain dari template.typ bisa dipakai di file ini.
#import "../template.typ": *

= Eksperimen dan Analisis

#bp[Uraian pada bab ini meliputi parameter eksperimen, karakteristik data, skenario ujicoba, tempat dan waktu eksperimen, spesifikasi peralatan ujicoba, cara penafsiran dan penyimpulan hasil proyek akhir. Untuk proyek akhir yang menggunakan metode kualitatif, dapat dijelaskan pendekatan yang digunakan, proses pengumpulan dan analisis informasi, proses penafsiran, dan penyimpulan hasil proyek akhir. Analisis hasil eksperimen seharusnya dihubungkan kembali dengan permasalahan. Berikut contoh sistematika penulisan Bab 4.]

== Parameter Eksperimen

#bp[Disini penulis dapat membahas parameter eksperimen lebih terperinci. Deskripsi pembahasan seharusnya singkat, padat dan jelas, sehingga membuat pembaca memahami maksud Penulis yang tertuang dalam tulisan.]

#bp[Dalam eksperimen ini menggunakan persamaan sebagai berikut:]

#pad(left: 1cm)[
  $ y = m x + c $ <eq-garis>
]

#pad(left: 1cm)[
  $ (y - y_1)/(x - x_1) = (y_2 - y_1)/(x_2 - x_1) $ <eq-interpolasi>
]

#bp[Selain itu dalam eksperimen juga menggunakan persamaan sebagai berikut untuk formulasi perbandingan hasil pengukuran dengan perhitungan.]

#pad(left: 1cm)[
  $ v = v_0 + a t $ <eq-kecepatan>
]

#pad(left: 1cm)[
  $ s = v_0 t + 1/2 a t^2 $ <eq-jarak>
]

#pad(left: 1cm)[
  $ v^2 = v_0^2 + 2 a s $ <eq-glbb>
]

== Karakteristik Data

#bp[Disini penulis dapat membahas karakteristik data lebih terperinci. Akan lebih baik jika Penulis dapat memberikan alasan terhadap penggunaan data yang mempunyai karakteristik seperti itu. Deskripsi pembahasan seharusnya singkat, padat dan jelas, sehingga membuat pembaca memahami maksud Penulis yang tertuang dalam tulisan.]

== Tempat Ujicoba

#bp[Disini penulis dapat membahas tempat pelaksanaan ujicoba lebih terperinci. Deskripsi pembahasan seharusnya singkat, padat dan jelas, sehingga membuat pembaca memahami maksud penulis yang tertuang dalam tulisan.]

== Waktu Ujicoba

#bp[Disini penulis dapat membahas waktu pelaksanaan ujicoba pada penelitian lebih detil. Deskripsi pembahasan seharusnya singkat, padat dan jelas, sehingga membuat pembaca memahami maksud penulis yang tertuang dalam tulisan terkait dengan waktu yang digunakan untuk ujicoba pada penelitian.]

== Spesifikasi Peralatan Ujicoba

#bp[Disini penulis dapat membahas spesifikasi peralatan lebih terperinci. Peralatan dapat berupa perangkat keras, perangkat lunak, piranti elektronik, gadget, dan lain-lain, yang berfungsi sebagai alat yang dipakai untuk percobaan. Deskripsi pembahasan seharusnya singkat, padat dan jelas, sehingga membuat pembaca memahami maksud penulis yang tertuang dalam tulisan.]

== Hasil Eksperimen

#bp[Disini penulis dapat membahas hasil eksperimen lebih terperinci. Deskripsi pembahasan seharusnya singkat, padat dan jelas, sehingga membuat pembaca memahami maksud penulis yang tertuang dalam tulisan.]

#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr),
    stroke: 0.5pt + black,
    align: center + horizon,
    table.header(
      table.cell(fill: rgb("#D9D9D9"))[*Kolom 1*],
      table.cell(fill: rgb("#D9D9D9"))[*Kolom 2*],
      table.cell(fill: rgb("#D9D9D9"))[*Kolom 3*],
      table.cell(fill: rgb("#D9D9D9"))[*Kolom 4*],
    ),
    [], [], [], [],
    [], [], [], [],
  ),
  caption: [Contoh tabel hasil eksperimen 1],
) <tab-eksperimen-1>

#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr),
    stroke: 0.5pt + black,
    align: center + horizon,
    table.header(
      table.cell(fill: rgb("#D9D9D9"))[*Kolom 1*],
      table.cell(fill: rgb("#D9D9D9"))[*Kolom 2*],
      table.cell(fill: rgb("#D9D9D9"))[*Kolom 3*],
      table.cell(fill: rgb("#D9D9D9"))[*Kolom 4*],
    ),
    [], [], [], [],
    [], [], [], [],
  ),
  caption: [Contoh tabel hasil eksperimen 2],
) <tab-eksperimen-2>

#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr),
    stroke: 0.5pt + black,
    align: center + horizon,
    table.header(
      table.cell(fill: rgb("#D9D9D9"))[*Kolom 1*],
      table.cell(fill: rgb("#D9D9D9"))[*Kolom 2*],
      table.cell(fill: rgb("#D9D9D9"))[*Kolom 3*],
      table.cell(fill: rgb("#D9D9D9"))[*Kolom 4*],
    ),
    [], [], [], [],
    [], [], [], [],
  ),
  caption: [Contoh tabel hasil eksperimen 3 dengan parameter eksperimen yang cukup banyak sehingga nama tabel panjang],
) <tab-eksperimen-3>

== Analisis Hasil Eksperimen

#bp[Disini penulis dapat membahas analisis hasil eksperimen lebih terperinci. Analisis hasil eksperimen seharusnya menjawab hipotesa bahwa solusi yang diajukan pada Tujuan dapat menyelesaikan permasalahan. Deskripsi pembahasan seharusnya singkat, padat dan jelas, sehingga membuat pembaca memahami maksud penulis yang tertuang dalam tulisan.]


#figure(
image("/assets/image.png"),
  caption: [Contoh Gambar hasil eksperimen 1],
) <fig-eksperimen-1>
#gap
#bp[Gambar atau grafik yang menunjukkan hasil eksperimen harus dijelaskan dalam paragraf penjelasan yang padat dan informatif, sebagai contoh dalam kalimat berikut. Grafik pada @fig-eksperimen-1 menunjukkan hubungan antara pengukuran dan perhitungan dari @eq-garis.]


#figure(
image("/assets/image-1.png"),
  caption: [Contoh Gambar hasil eksperimen 2 dengan nama gambar yang cukup panjang sehingga diperlukan penataan yang baik dalam daftar gambar],
) <fig-eksperimen-2>
#gap
#bp[Penjelasan: Grafik pada @fig-eksperimen-2 menunjukkan hubungan antara sensor suhu 1 dan sensor suhu 2 yang dibentuk dari @eq-interpolasi.]
