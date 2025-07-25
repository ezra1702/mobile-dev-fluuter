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

  // ---------------- DFS Traversals ----------------

  void inorderTraversal() {
    print("Inorder DFS:");
    _inorderRec(root);
  }

  void _inorderRec(Node? node) {
    if (node != null) {
      _inorderRec(node.left);
      print(node.value);
      _inorderRec(node.right);
    }
  }

  void preorderTraversal() {
    print("Preorder DFS:");
    _preorderRec(root);
  }

  void _preorderRec(Node? node) {
    if (node != null) {
      print(node.value);
      _preorderRec(node.left);
      _preorderRec(node.right);
    }
  }

  void postorderTraversal() {
    print("Postorder DFS:");
    _postorderRec(root);
  }

  void _postorderRec(Node? node) {
    if (node != null) {
      _postorderRec(node.left);
      _postorderRec(node.right);
      print(node.value);
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

  bst.inorderTraversal();   // Output: 20 30 40 50 60 70 80
  bst.preorderTraversal();  // Output: 50 30 20 40 70 60 80
  bst.postorderTraversal(); // Output: 20 40 30 60 80 70 50
}
