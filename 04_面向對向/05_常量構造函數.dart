void main(List<String> args) {
  const p1 = Person("why");
  const p2 = Person("why");
  print(identical(p1, p2));
}

class Person{
  final String name;
  // final int age;


  const Person(this.name);
}