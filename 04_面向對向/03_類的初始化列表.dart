// 解決方法 1：為參數指定非空預設值
// 將參數定義為可選的，但提供一個非空的預設值。這樣即使呼叫方未傳入值，參數也不會是 null
// 特點：簡單直接，適合大多數場景，且不需顯式檢查 null

class Person {
  final String name;
  final int age;

  // 提供 age 預設值為 10
  Person(this.name, {int age = 10}) : this.age = age;

  @override
  String toString() {
    return 'Person(name: $name, age: $age)';
  }
}

// 解決方法 2：使用 required 修飾符
// 如果參數必須由呼叫方提供，則應使用 required 修飾符。這樣 Dart 會強制要求使用者在呼叫時傳入該參數。
// 特點：確保必要參數完整性，但需要呼叫方顯式傳值

class Person2 {
  final String name;
  final int age;

  // 使用 required 修飾符使 age 成為必填參數
  Person2(this.name, {required this.age});

  @override
  String toString() {
    return 'Person(name: $name, age: $age)';
  }
}

// 解決方法 3：將參數定義為可空型別
// 如果參數允許為 null，可以將其定義為可空型別（int?），並根據需要在類內進行處理。
// 特點：靈活允許參數為 null，並可提供合理默認值

const temp = 25;
class Person3 {
  // final 變量代表只能賦值一次
  final String name;
  final int age;

  // age 為可空型別，並在構造函數內處理默認值
  // Person3(this.name,{this.age=10});
  // 如果是以上Person3只能在{this.age}裡面賦予一個確定的值
  // 如果是以下:??就可以使用三元運算符
  Person3(this.name, {int? age}) : this.age = temp >20 ? 30 : 50;

  @override
  String toString() {
    return 'Person(name: $name, age: $age)';
  }
}


void main() {
  var p1 = Person("why", age: 18); // 指定 age
  var p2 = Person("why"); // 未指定 age，使用預設值 10
  print("第一種:");
  print(p1); // 輸出：Person(name: why, age: 18)
  print(p2); // 輸出：Person(name: why, age: 10)

  var p1_2 = Person2("why", age: 18); // 指定 age
  print("第二種:");
  print(p1_2); // 輸出：Person(name: why, age: 18)


  var p3 = Person3("why",age: 18); // 未指定 age，使用預設值 10
  var p3_2 = Person3("why"); // 未指定 age，使用預設值 10
  print("第三種:");
  print(p3); // 輸出：Person(name: why, age: 10)
  print(p3_2);
}
