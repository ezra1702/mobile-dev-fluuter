class NamaBarang {
  var barang;
  int harga;
  NamaBarang? next;
  NamaBarang? prev;
  NamaBarang(this.barang, this.harga);
}

class CircularDoublyLinkedList {
  NamaBarang? head;

  // Menambahkan node di akhir list
  void tambahBelakang(String barang, int harga) {
    NamaBarang newNode = NamaBarang(barang, harga);
    
    if (head == null) {
      head = newNode;
      head!.next = head; // Menunjuk ke diri sendiri
      head!.prev = head; // Menunjuk ke diri sendiri
      return;
    }
    
    NamaBarang? last = head!.prev; // Dapatkan node terakhir
    
    newNode.next = head; // Node baru next menunjuk head
    newNode.prev = last; // Node baru prev menunjuk node terakhir
    last!.next = newNode; // Node terakhir next menunjuk node baru
    head!.prev = newNode; // Head prev menunjuk node baru
  }

  // Menampilkan semua barang
  void tampilBarang() {
    if (head == null) {
      print("List kosong");
      return;
    }
    
    NamaBarang? current = head;
    do {
      print("|Barang: ${current!.barang}, Harga: ${current.harga}|");
      current = current.next;
    } while (current != head);
  }

  // Menghapus node berdasarkan nama barang
  void hapusBarang(String barang) {
    if (head == null) {
      print("List kosong");
      return;
    }
    
    NamaBarang? current = head;
    NamaBarang? toDelete;
    
    do {
      if (current!.barang == barang) {
        toDelete = current;
        break;
      }
      current = current.next;
    } while (current != head);
    
    if (toDelete == null) {
      print("Barang $barang tidak ditemukan");
      return;
    }
    
    // Jika hanya ada 1 node
    if (head!.next == head && head!.prev == head) {
      head = null;
      print("Barang $barang berhasil dihapus");
      return;
    }
    
    // Jika node yang dihapus adalah head
    if (toDelete == head) {
      head = head!.next;
    }
    
    // Perbaiki pointer prev dan next dari node sekitar
    toDelete.prev!.next = toDelete.next;
    toDelete.next!.prev = toDelete.prev;
    
    print("Barang $barang berhasil dihapus");
  }

  // Mencari barang
  void cariBarang(String barang) {
    if (head == null) {
      print("List kosong");
      return;
    }
    
    NamaBarang? current = head;
    bool found = false;
    
    do {
      if (current!.barang == barang) {
        print("Barang ditemukan: |Barang: ${current.barang}, Harga: ${current.harga}|");
        found = true;
        break;
      }
      current = current.next;
    } while (current != head);
    
    if (!found) {
      print("Barang $barang tidak ditemukan");
    }
  }
}

void main() {
  CircularDoublyLinkedList list = CircularDoublyLinkedList();
  
  list.tambahBelakang("Buku", 50000);
  list.tambahBelakang("Pensil", 2000);
  list.tambahBelakang("Penghapus", 1000);
  list.tambahBelakang("Rautan", 3000);
  
  print("=== List Barang ===");
  list.tampilBarang();
  
  print("\n=== Hapus Pensil ===");
  list.hapusBarang("Pensil");
  list.tampilBarang();
  
  print("\n=== Cari Rautan ===");
  list.cariBarang("Rautan");
  
  print("\n=== Cari Pensil ===");
  list.cariBarang("Pensil");
}