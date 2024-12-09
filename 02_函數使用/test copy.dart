void greet(String name, {String? title, required int age}) {
  // 如果 title 不為空，則顯示 title，否則只顯示 name
  if (title != null) {
    print('Hello $title $name, Age: $age');
  } else {
    print('Hello $name, Age: $age');
  }
}

void main() {
  greet('Alice', age: 30); // 輸出: Hello Alice, Age: 30
  greet('Bob', title: 'Dr.', age: 45); // 輸出: Hello Dr. Bob, Age: 45
}
