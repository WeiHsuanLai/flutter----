void main(List<String> args) {
  sayHello1("why");

  sayHello2("why",18,18.888);

   sayHello3("why", age: 18, height: 18.888);
}

// 必選參數:必須傳
void sayHello1(String name){
  print(name);
}

// dart 中沒有函數的重載
// 實參和型參在進行配對時，根據位置的匹配
// 位置可選參數：[int? age, double? height]
// age 和 height 是可選的，並且是可空的
void sayHello2(String name, [int? age, double? height]) {
  print(name);
  if (age != null) {
    print(age);
  }
  if (height != null) {
    print(height);
  }
}

// 命名必選參數：使用 {required int age, required double height}
// 調用時必須提供這些參數
void sayHello3(String name,{required int age,required double height}){
  print(name);
  print(age);
  print(height);
}