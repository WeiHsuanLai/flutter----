// 匯總所有 `_` 的使用範例

// 1. 私有成員
class Example {
  int publicVariable = 10; // 公共成員
  int _privateVariable = 20; // 私有成員

  void _privateMethod() { // 私有方法
    print("This is a private method");
  }

  void testAccess() {
    print(_privateVariable); // 私有變數在同一文件內可以訪問
    _privateMethod();        // 私有方法在同一文件內可以調用
  }
}

// 2. 匿名變數（忽略的變數）
void anonymousVariableExample() {
  var numbers = [1, 2, 3, 4];
  // 忽略變數
  for (var _ in numbers) {
    print("Do something"); // 不使用迭代變數
  }

  numbers.asMap().forEach((_, value) {
    print(value); // 忽略索引，只處理值
  });
}

// 3. 匿名函數的參數佔位符
void anonymousFunctionExample() {
  var callback = (_) => print("Callback triggered!");
  callback(null); // Output: Callback triggered!
}

// 4. 避免未使用的變數警告
void unusedVariableExample() {
  // var _unusedVariable = 42; // 不會觸發未使用的警告
  print("This function uses a variable but doesn't do much.");
}

// 5. 私有類或函數
class _PrivateClass {
  void sayHello() {
    print("Hello from PrivateClass");
  }
}

// 6. 元組中的佔位符 (Dart 3+ 支援)
(void, int) getTuple() => (null, 42);

void tuplePlaceholderExample() {
  final (_, value) = getTuple(); // 忽略第一個值
  print(value); // Output: 42
}

void main() {
  // 測試 1: 私有成員
  var example = Example();
  print(example.publicVariable); // Output: 10
  example.testAccess();

  // 測試 2: 匿名變數
  print("\n匿名變數範例:");
  anonymousVariableExample();

  // 測試 3: 匿名函數
  print("\n匿名函數範例:");
  anonymousFunctionExample();

  // 測試 4: 未使用變數
  print("\n未使用變數範例:");
  unusedVariableExample();

  // 測試 5: 私有類
  print("\n私有類範例:");
  var privateClass = _PrivateClass();
  privateClass.sayHello();

  // 測試 6: 元組佔位符
  print("\n元組範例:");
  tuplePlaceholderExample();
}
