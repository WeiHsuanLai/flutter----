void main(List<String> args) {
  final r = Rectangle();
  print(r.getArea());
  // final map = Map();
  // print(map.runtimeType);
}

// 注意二:抽象類不能實例化
abstract class Shape{
  int getArea();
  String getInfo(){
    return "形狀";
  }

  // factory Shape(){
  //   return Rectangle();
  // }
}

// 注意一:繼承抽象類後，必須實現抽象類的抽象方法
class Rectangle extends Shape{
  @override
  int getArea() {
    return 100;
  }
}