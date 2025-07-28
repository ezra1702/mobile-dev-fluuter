# 📱 Mobile Dev from Flutter

## 1. Algoritma Struktur Data Ringkas
### 📌 Struktur Data
- 🧱 Stack (LIFO)
- 🧭 Queue (FIFO)
- 🔁 Circular Linked List
- 🌲 Binary Search Tree (BST)
### 📌 Algoritma Traversal
- 🔍 DFS – Inorder, Preorder, Postorder
- 🌐 BFS – Level Order
### 📌 Backtracking
- 🔄 Permutasi angka (rekursif)

## 2. Dasar Flutter
### 📌 Widget Dasar
- 🧱 **MaterialApp** – Root utama aplikasi Flutter
- 🏗️ **Scaffold** – Struktur dasar halaman (kerangka layar)
- 🧭 **AppBar** – Header bar bagian atas layar
- 📦 **Container** – Widget serbaguna (layout, styling, padding)
- 🔤 **Text** – Menampilkan tulisan
- 🐦 **FlutterLogo** – Logo Flutter default
- 🔘 **ElevatedButton** – Tombol dengan elevasi
- ⭐ **Icon** – Menampilkan ikon dari Material Icons
- 🖼️ **Image** – Menampilkan gambar dari asset / internet
### 📌 Visible & Invisible 
- 🎨 **Visible Widget**
  - 📝 Text – Menampilkan tulisan
  - ⭐ Icon – Menampilkan ikon dari Material Icons
  - 🖼️ Image – Menampilkan gambar dari asset atau internet
  - 🐦 FlutterLogo – Logo bawaan Flutter
  - 🔘 ElevatedButton – Tombol dengan efek bayangan/elevasi
  - 📦 Container (dengan child/warna) – Untuk styling, layout
  - 💳 Card – Widget kartu dengan shadow
  - 📋 ListTile – Elemen list dengan leading, title, subtitle, trailing
- 🧱 **Invisible Widget (Layouting)**
  - 🎯 Center
    - Menempatkan widget anak di tengah (horizontal & vertikal)
  - 📏 Column
    - `mainAxisAlignment` :
        - Macam-macamnya: 
            - 🔼 `start` : sejajar dari atas
            - ⬜ `center` : sejajar di tengah secara vertikal
            - 🔽 `end` : sejajar dari bawah
            - ↔️ `spaceBetween` : jarak antar widget tanpa padding di ujung
            - ↔️ `spaceAround` : jarak antar widget dengan padding di ujung
            - 🔁 `spaceEvenly` : semua jarak (termasuk sisi) merata
    - `crossAxisAlignment` :
        - Macam-macamnya: 
            - ◀️ `start` : rata kiri
            - ⬛ `center` : rata tengah horizontal
            - ▶️ `end` : rata kanan
            - 📏 `stretch` : isi penuh lebar parent
  - 📐 Row
    - `mainAxisAlignment` :
        - Macam-macamnya:
            - ⬅️ `start` : sejajar dari kiri
            - ⬜ `center` : sejajar di tengah secara horizontal
            - ➡️ `end` : sejajar dari kanan
            - ↔️ `spaceBetween` : jarak antar widget tanpa padding di ujung
            - ↔️ `spaceAround` : jarak antar widget dengan padding di ujung
            - 🔁 `spaceEvenly` : semua jarak (termasuk sisi) merata
    - `crossAxisAlignment` :
        - Macam-macamnya:
            - 🔼 `start` : sejajar dari atas
            - ⬛ `center` : sejajar di tengah secara vertikal
            - 🔽 `end` : sejajar dari bawah
            - 📏 `stretch` : isi penuh tinggi parent
  - 🧩 Stack
    - `alignment`
        - Macam-macamnya:
            - ↖️ `topLeft`
            - 🔼 `topCenter`
            - ↗️ `topRight`
            - ◀️ `centerLeft`
            - 🎯 `center`
            - ▶️ `centerRight`
            - ↙️ `bottomLeft`
            - 🔽 `bottomCenter`
            - ↘️ `bottomRight`
  - 📜 SingleChildScrollView
    - Scrollable satu arah (vertikal/horizontal)
    - Cocok untuk layout panjang (agar tidak overflow)
    - Digunakan untuk satu widget child
  - 📋 ListView
    - `scrollDirection`
        - Macam-macamnya:
            - 🧭 `Axis.vertical` – default, scroll dari atas ke bawah
            - ➡️ `Axis.horizontal` – scroll ke samping
    - Menampilkan daftar scrollable (list)
    - Bisa statis (`ListView`) atau dinamis (`ListView.builder`)
    - Mendukung infinite scroll, lazy loading
  - 🧱 GridView
    - `gridDelegate`
        - Macam-macamnya:
            - 🧮 `SliverGridDelegateWithFixedCrossAxisCount` – jumlah kolom tetap
            - 📏 `SliverGridDelegateWithMaxCrossAxisExtent` – lebar maksimum tiap item
    - Menampilkan item dalam bentuk grid (tabel/kotak)
    - Bisa scrollable
    - Cocok untuk galeri, katalog, dll.
