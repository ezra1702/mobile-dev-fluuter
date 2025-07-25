class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value);
}

class BinarySearchTree {
  Node? root;

  // Menambahkan nilai ke dalam pohon BST
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

  // Mencari nilai di BST
  bool search(int value) {
    return _searchRec(root, value);
  }

  bool _searchRec(Node? node, int value) {
    if (node == null) return false;
    if (value == node.value) return true;

    if (value < node.value) {
      return _searchRec(node.left, value);
    } else {
      return _searchRec(node.right, value);
    }
  }

  // Menampilkan isi pohon secara inorder
  void inorderTraversal() {
    _inorderRec(root);
  }

  void _inorderRec(Node? node) {
    if (node != null) {
      _inorderRec(node.left);
      print(node.value);
      _inorderRec(node.right);
    }
  }
}

void main() {
  var bst = BinarySearchTree();
  bst.insert(50);
  bst.insert(30);
  bst.insert(70);
  bst.insert(20);
  bst.insert(40);
  bst.insert(60);
  bst.insert(80);

  print("Inorder Traversal:");
  bst.inorderTraversal();

  print("Search 60: ${bst.search(60)}"); // true
  print("Search 25: ${bst.search(25)}"); // false
}
