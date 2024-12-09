void main(List<String> args) {
  final p = Person();
  
  // 直接訪問屬性
  p.name = "why";
  // print(p.name);

  // 通過 getter 和 setter 來訪問
  p.setName="Leo";
  print(p.getName);
  // print(p.setName);
}

class Person{
  String name = "";

  // Setter 的功能
  // Setter 是一個特殊的方法，用於設置類的屬性值。
  // 它不能有返回值，只能接受一個參數，並將該參數賦值給某個屬性。
  set setName(String name){
    this.name = name;
  }

  // Getter 的功能
  // Getter 是用於訪問屬性值的特殊方法。
  // 它與屬性類似，可以用於表達式中。
  String get getName{
    return name;
  }
}

// Setter 無返回值，只能用於賦值操作，不能直接打印。
// 正確做法：使用 Getter 來獲取屬性值進行打印。
// 如果需要設置並返回值，可以考慮使用方法代替 Setter。

