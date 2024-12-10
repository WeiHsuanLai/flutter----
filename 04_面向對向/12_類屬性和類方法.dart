void main(List<String> args) {
  Person.courseTime="8:00";
  print(Person.courseTime);
  Person.gotoCourse();
}

class Person{
  // 成員變量 
  String name = "";

  // 靜態屬性(類屬性)
  static String courseTime ="";

  // 對象方法
  void eatng(){
    print("eating");
  }

  // 靜態方法 (類方法)
  static void gotoCourse(){
    print("去上課");
  }
}