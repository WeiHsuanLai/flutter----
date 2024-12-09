void main(List<String> args) {
  // var p = Person();
  // p.name="why";
  // p.run();
  // p.eat();

  // 級聯運算符
  var p = Person()
  ..name = "why"
  ..eat()
  ..run();
  print(p.name);
}

class Person{
  late String name;
  void run(){
    print("running");
  }

  void eat(){
    print("eating");
  }
}