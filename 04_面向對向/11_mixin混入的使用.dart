import 'dart:ffi';

void main(List<String> args) {
  final sm = SuperMan();
  sm.running();
}


mixin Runner {
  void running(){
    print("跑");
  }
}

mixin Flyer{
  void flying(){
    print("飛");
  }
}

class Animal{
  void eating(){
    print("動物吃");
  }

  void running(){
    print("動物跑步");
  }
}

class SuperMan extends Animal with Runner,Flyer{
  @override
  void eating(){
   print("SuperMan is eating differently!");
  }
  
}