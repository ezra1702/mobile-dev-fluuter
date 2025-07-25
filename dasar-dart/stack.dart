import 'dart:io';
class Node{
  String barang;
  int harga;
  List<String> kategori = [];
  Node? next;

  Node(this.barang, this.harga, this.kategori);
}

class Stack {
  Node? top;

  void push(String barang, int harga, List<String> kategori) {
    // Jika Input Harga = 10000 akan dikonvert menjadi 10.000
  
    Node newNode = Node(barang, harga, kategori);
    if(top == null){
      top = newNode;
      return;
    }
      newNode.next = top; // Node baru menunjuk ke head
      top = newNode; // Head sekarang adalah node baru
  }
  void pop(){
    if(top == null){
      print("Stack kosong, tidak ada yang bisa dihapus");
      return;
    }
    String barangDihapus = top!.barang;
    int hargaDihapus = top!.harga;
    List<String> kategoriDihapus = top!.kategori;
    // Geser top ke bawah 
    top = top!.next;
    print("Barang $barangDihapus dengan harga $hargaDihapus dan kategori ${kategoriDihapus.join(', ')} telah dihapus dari stack.");
  } 
  void display(){
    if (top == null){
      print("Stack kosong");
      return;
    }
    Node? current = top;
    while (current != null){
      print("|Barang: ${current.barang}, Harga: ${current.harga}, Kategori: ${current.kategori.join(', ')}|");
      current = current.next;     
    }
  }
  void peek(){
    if (top == null) {
      print("Stack kosong, tidak ada yang bisa ditampilkan");
      return;
    }
    print("Barang teratas: ${top!.barang}, Harga: ${top!.harga}, Kategori: ${top!.kategori.join(', ')}");
  }
}

void main(){
print("=========== Pilih Menu ===========");
  print("1. Tambah Barang");
  print("2. Hapus Barang"); 
  print("3. Tampilkan Barang");
  print("4. Tampilkan Barang Teratas");
  print("5. Keluar");
print("===================================");

Stack stack = Stack();
while (true) {
  print("Masukan pilihan (1-5): ");
  String? input = stdin.readLineSync();
  if (input == null) {
    print("Pilihan tidak valid, silakan coba lagi.");
    continue;
  }else if(input == "1"){
    print("Masukan nama barang:");
    String? barang = stdin.readLineSync();
    if (barang == null || barang.isEmpty) {
      print("Nama barang tidak boleh kosong.");
      continue;
    }
    print("Masukan harga barang:");
    String? hargaInput = stdin.readLineSync();
    if (hargaInput == null || hargaInput.isEmpty) {
      print("Harga barang tidak boleh kosong.");
      continue;
    }
    int harga = int.tryParse(hargaInput) ?? 0;

    print("Masukan kategori barang (pisahkan dengan koma):");
    String? kategoriInput = stdin.readLineSync();
    if (kategoriInput == null || kategoriInput.isEmpty) {
      print("Kategori barang tidak boleh kosong.");
      continue;
    }
    List<String> kategori = kategoriInput.split(',');
    stack.push(barang, harga, kategori);
  }
  else if(input == "2"){
    stack.pop();
  }
  else if(input == "3"){
    stack.display();
  }
  else if(input == "4"){
    stack.peek();
  }
  else if(input == "5"){
    print("Terima kasih telah menggunakan program ini.");
    break;
  }

 }
}