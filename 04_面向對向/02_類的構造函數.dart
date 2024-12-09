main(List<String> args){
  // 1.創建 Person 對象
  var p = Person.withNameAgeHeight("why",18,1.88);

  print(p);
  // print(p.toString());

  var p1 = Person.fromMap({
    "name":"leo",
    "age":18,
    "height":1.88
  });

  print(p1);

  // 默認情況下所有的類都繼承自 Object  

  // 2.Object 和 dynamic 區別
  // 父類引用指向子類對象
  // Object 和 dynamic
  // Object 調用方法時，編譯時會報錯
  // dynamic 調用方法時，編譯時不報錯，但運行時會存在安全隱患

  // Object obj = "why";
  // print(obj.substring(1));

  //明確聲明 
  // dynamic obj = 123;
  // print(obj.substring(1));
}

class Person{
  late String name;
  late int age;
  late double height;

  Person(this.name,this.age);
  // Person(this.name,this.age,{this.height});

  // 命名構造函數
  Person.withNameAgeHeight(this.name,this.age,this.height);
  Person.fromMap(Map<String,dynamic>map){
    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"];
  }

  @override
  String toString() {
    return 'Person(name: $name, age: $age, height: $height)';
  }
}