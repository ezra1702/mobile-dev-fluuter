class Node {
  String data;
  Node? next;
  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;
  void Enqueue(String node){
    Node newNode = Node(node);
    if(rear == null){
      front = rear = newNode;
      return;
    } 
      rear!.next = newNode;
      rear = newNode;
      print("Data $node telah ditambahkan ke dalam antrian.");
  }
  void Dequeue(){
    if (front == null){
      print("Antrian kosong, tidak ada yang bisa dihapus");
      return;
    }
    print("Dequeue: ${front!.data}");
    front = front!.next;
    if (front == null) {
      rear = null; // Jika antrian menjadi kosong, rear juga harus diatur ke null
    } 
  }
  void peek(){
    if (front == null) {
      print("Antrian kosong, tidak ada yang bisa ditampilkan");
      return;
    }
    print("Data terdepan: ${front!.data}");
  }
  void display(){
    if (front == null){
      print("Antrian kosong");
      return;
    }
    Node? current = front;
    while (current != null){
      print("|Data: ${current.data}|");
      current = current.next;     
    }
  }
}

void main() {
  Queue queue = Queue();
  queue.Enqueue("Barang A");
  queue.Enqueue("Barang B");
  queue.Enqueue("Barang C");
  
  queue.display();
  
  queue.peek();
  
  queue.Dequeue();
  queue.display();
  
  queue.Dequeue();
  queue.Dequeue();
  
}