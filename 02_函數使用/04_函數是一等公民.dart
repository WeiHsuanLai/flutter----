void main(List<String> args) {
  // test((abc){
  //   print(abc);
  // });

   test(( num1,num2) {
    return num1 + num2;
  });

  var demo1 = demo();
  print(demo1(20,30));
}

// 封裝 test 函數，要求: 傳入一個函數
// void test(Function foo){
//   foo();
// }

typedef Calculate = int Function(int num1,int num2);

// void test(int foo(int num1,int num2)){
//   foo(20,30);
// }

void test(Calculate calc){
   // 調用傳入的函數並打印結果
  int result = calc(20, 30);
  print("計算結果: $result");
}

Calculate demo(){
  return(num1,num2){
    return num1 *num2;
  };
}