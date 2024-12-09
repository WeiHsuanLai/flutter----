main(List<String> args){
    var p = Person("why",18);
    // print("Name: ${p.name}, Age: ${p.age}");

    // 這是因為 print 呼叫了物件的 toString 方法，而 Person 類別
    // 中沒有覆寫 toString 方法，因此會使用預設的 toString 行為，輸出類別名稱和物件的記憶體位置的描述。

    print(p);
}

class Person{
    String name;
    int age;

    // Person(String name,int age){
    //     this.name = name;
    //     this.age = age;
    // }

    Person(this.name,this.age);
    // 所以這邊要用 toString() 方法
    String toString() {
    return 'Person(name: $name, age: $age)';
  }
}