// 方法 1：在字段聲明時初始化
// 直接為字段提供一個初始值。這樣就保證了字段在構造函數被調用之前已被初始化。
class Person1 {
  String name = "";
  int age = 0;
  double height = 0.0;

  Person1(this.name, this.age);
  Person1.withNameAgeHeight(this.name, this.age, this.height);
  Person1.fromMap(Map<String, dynamic> map) {
    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"];
  }

  @override
  String toString() {
    return 'Person1(name: $name, age: $age, height: $height)';
  }
}

// 方法 2：在構造函數中初始化所有字段
// 確保所有非空字段在構造函數中被初始化。

class Person2 {
  String name;
  int age;
  double height;

  Person2(this.name, this.age) : height = 0.0;

  Person2.withNameAgeHeight(this.name, this.age, this.height);

  Person2.fromMap(Map<String, dynamic> map)
      : name = map["name"],
        age = map["age"],
        height = map["height"];

  @override
  String toString() {
    return 'Person2(name: $name, age: $age, height: $height)';
  }
}

// 方法 3：使用 late 關鍵字
// 如果您保證字段在使用之前會被正確初始化，可以使用 late 關鍵字告訴 Dart 編譯器該字段會被延遲初始化。
class Person3 {
  late String name;
  late int age;
  late double height;

  Person3(this.name, this.age);

  Person3.withNameAgeHeight(this.name, this.age, this.height);

  Person3.fromMap(Map<String, dynamic> map) {
    name = map["name"];
    age = map["age"];
    height = map["height"];
  }

  @override
  String toString() {
    return 'Person3(name: $name, age: $age, height: $height)';
  }
}

void main(List<String> args) {
  var p1 = Person1.fromMap({
    "name":"leo",
    "age":18,
    "height":1.88
  });
  var p2 = Person2.fromMap({
    "name":"Jack",
    "age":19,
    "height":1.98
  });
  var p3 = Person3.fromMap({
    "name":"Mark",
    "age":20,
    "height":2.08
  });

  print(p1);
  print(p2);
  print(p3);
}

// 選擇建議
// 初始化值簡單且有默認值時，建議使用 方法 1。
// 需要在構造函數中處理邏輯時，建議使用 方法 2。
// 對象的字段需要在其他邏輯中延遲初始化時，可以考慮使用 方法 3，但需謹慎，避免在使用前未初始化導致錯誤。