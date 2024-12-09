class MyClass {
  static int count = 0;
}

class Counter {
  static int count = 0; // 靜態屬性

  void increment() {
    count++;
  }
}

void main() {
  Counter c1 = Counter();
  Counter c2 = Counter();

  c1.increment();
  c2.increment();

  print(Counter.count); // 2，所有實例共享同一個靜態變數
}
