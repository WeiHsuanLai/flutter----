typedef Calculate = int Function(int a, int b);

void test(Calculate calc) {
  int result = calc(5, 10);
  print('Result: $result');
}

void main() {
  // 匿名函數作為參數，並指定類型
  test((int a, int b) {
    return a;
  });
}
