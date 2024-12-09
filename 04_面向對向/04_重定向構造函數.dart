void main(List<String> args) {
  var p = Person("why");
  print(p.name);
  print(p.age);
}

class Person{
  String name;
  int age;

  // Person(this.name):age=0;
  // 構造函數的重定向

  Person(name):this._internal(name, 10);
  Person._internal(this.name,this.age);
}