void main() {
  // 匿名函數可以直接作為參數傳遞
  List<int> numbers = [1, 2, 3];
  numbers.forEach((num) {
    print(num * 2);
  });
}