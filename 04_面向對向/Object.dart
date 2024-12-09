// Dart 中所有類型的基礎類型。
// 靜態型別檢查：當變數的型別被指定為 Object 時，Dart 編譯器會對變數的操作進行靜態型別檢查。
// 需要明確轉型：如果你想對 Object 型別的變數使用子類別的方法或屬性，必須先進行明確轉型。

void main() {
  Object obj = "Hello, Dart!";
  
  // obj.length; // 編譯錯誤：Object 沒有 length 屬性

  if (obj is String) {
    print(obj.length); // OK：透過型別檢查後才能使用 String 的屬性
  }
}

// 使用場景：
// 當你需要存放任何類型的值，但不打算頻繁操作其特定屬性或方法時。
// 適合設計更加泛型的 API。