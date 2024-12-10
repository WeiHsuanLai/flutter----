void main(List<String> args) {
  SuperMan superMan = SuperMan();
  superMan.eating();
}

// Dart 中沒有哪一個關鍵字是用來定義接口
// 沒有像是 interface/protocol
// 默認情況下所有類都是隱式接口
// Dart 支持單繼承
// 當將一個類當作接口使用時，那麼實現這個接口的類，必須實現這個接口中的所有方法

class Runner {
  void running(){

  }
}

class Flyer{
  void flying(){

  }
}

class Animal{
  void eating(){
    print("eat");
  }

  void running(){
    print("跑");
  }
}

class SuperMan extends Animal implements Runner,Flyer{
  @override
  void eating(){
   print("SuperMan is eating differently!");
  }
  

  @override
  void flying(){

  }
}