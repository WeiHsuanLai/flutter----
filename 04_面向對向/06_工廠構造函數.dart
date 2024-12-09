class Person {
  String name;
  String color;

  // 緩存用的 Map
  static final Map<String, Person> _nameCache = {};
  static final Map<String, Person> _colorCache = {};

  // 工廠構造函數 withName
  factory Person.withName(String name) {
    if (_nameCache.containsKey(name)) {
      return _nameCache[name]!;
    } else {
      final p = Person(name, "default");
      _nameCache[name] = p;
      return p;
    }
  }

  // 工廠構造函數 withColor
  factory Person.withColor(String color) {
    if (_colorCache.containsKey(color)) {
      return _colorCache[color]!;
    } else {
      final p = Person("default", color);
      _colorCache[color] = p;
      return p;
    }
  }

  // 普通構造函數
  Person(this.name, this.color);
}

void main(List<String> args) {
  final p1 = Person.withName("why");
  final p2 = Person.withName("why");
  print(identical(p1, p2)); // true，因為是緩存的相同對象

  final p3 = Person.withColor("red");
  final p4 = Person.withColor("red");
  print(identical(p3, p4)); // true，因為是緩存的相同對象
}

// 為什麼使用工廠構造函數？
// 控制對象創建：
// 工廠構造函數可以手動返回對象，而不是必須創建一個新對象。
// 實現對象重用：
// 工廠構造函數與靜態緩存結合，實現了相同屬性對象的重用。
// 優化性能：
// 避免了多次創建相同內容的對象，減少了內存開銷