main(List<String> args) {
  // 1. 明確的聲明
  String name = "why";

  // 類型推導(var/final/const)
  // 推導的方式雖然沒有明確的指定變量類型，但有自己的明確類型
  // 2.1 var 聲明變量
  var age = 20;
  // age = "abc";
  age = 30;

  // 2.2 final 聲明常量
  final height = 1.88;
  // height = 2.00;

  // 2.3 const 聲明常量
  const address = "台北";
  // address = "新竹";

  // 2.4 final 和 const 差別
  // const 必須賦值 常量值(編譯期間需要有一個確定的值)
  // final 可以通過計算/函數獲取一個值(運行期間來確定一個值)
  // const date1 = DateTime.now(); 寫法錯誤

  // final date2 = DateTime.now();
  // print(date2);

  // final 用於更多 因為可以取的動態的值 

  // final p1 = Person("why");
  // final p2 = Person("why");
  // print(identical(p1, p2)); //identical(a,b); 用來判斷是否是相同的物件，即它們是否指向相同的記憶體位置。
  // 如果比較屬性是否相同，則應該使用自定義的比較邏輯（例如重寫 == 運算符）。
  // print(p1);
  // print(p2);

  // 在 Dart2.0 之後， const 可以省略
  const p1 = const Person("why");
  const p2 = const Person("why");
  const p3 = const Person("lilei");
  print("p1, p2:${identical(p1, p2)}");
  print("p1, p2:${identical(p1, p3)}");
}
class Person {
  final String name;
  const Person(this.name); // 簡化建構函式的寫法
}