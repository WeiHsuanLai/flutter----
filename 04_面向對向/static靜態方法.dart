class MyClass {
  static void sayHello() {
    print("Hello from static method");
  }
}

class Calculator {
  static int add(int a, int b) => a + b;
  static int multiply(int a, int b) => a * b;
}

void main() {
  MyClass.sayHello();
  print(Calculator.add(2, 3));       // 5
  print(Calculator.multiply(4, 5)); // 20
}
