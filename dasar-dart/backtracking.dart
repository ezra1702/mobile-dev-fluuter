void generatePermutations(List<int> nums) {
  List<int> current = [];
  List<bool> used = List.filled(nums.length, false);

  void backtrack() {
    if (current.length == nums.length) {
      print(List.from(current)); // solusi lengkap
      return;
    }

    for (int i = 0; i < nums.length; i++) {
      if (used[i]) continue;

      // pilih
      used[i] = true;
      current.add(nums[i]);

      // lanjut
      backtrack();

      // backtrack
      used[i] = false;
      current.removeLast();
    }
  }

  backtrack();
}

void main() {
  generatePermutations([1, 2, 3]);
}
