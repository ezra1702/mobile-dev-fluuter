import 'dart:collection'; // untuk Queue

class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value);
}

class BinarySearchTree {
  Node? root;

  void insert(int value) {
    root = _insertRec(root, value);
  }

  Node _insertRec(Node? node, int value) {
    if (node == null) return Node(value);

    if (value < node.value) {
      node.left = _insertRec(node.left, value);
    } else if (value > node.value) {
      node.right = _insertRec(node.right, value);
    }

    return node;
  }

  // ---------------- BFS Traversal ----------------

  void bfsTraversal() {
    if (root == null) return;

    Queue<Node> queue = Queue<Node>();
    queue.add(root!);

    print("BFS (Level Order):");

    while (queue.isNotEmpty) {
      Node current = queue.removeFirst();
      print(current.value);

      if (current.left != null) queue.add(current.left!);
      if (current.right != null) queue.add(current.right!);
    }
  }
}
void main() {
  var bst = BinarySearchTree();
  bst.insert(5);
  bst.insert(3);
  bst.insert(7);
  bst.insert(2);
  bst.insert(4);
  bst.insert(6);
  bst.insert(8);

  // Menampilkan isi pohon secara BFS
  bst.bfsTraversal();
}