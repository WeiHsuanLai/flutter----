void executeFunction(Function func) {
  func();
}

void sayHello() {
  print('Hello!');
}

void main() {
  executeFunction(sayHello); // 輸出: Hello!
  // sayHello();
}
