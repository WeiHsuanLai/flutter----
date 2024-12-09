void main(List<String> args) {
  // test(bar);

  // 匿名函數
  test((){
    print("匿名函數被調用");
    return 10;
  });

  // 箭頭函數:條件， 函數體只有一行代碼

  test(()=>print("箭頭函數被調用"));
}

// 函數可以做為另一個函數的參數
void test(Function foo){
 // 調用傳入的函數參數 foo
  foo();  // 這裡需要調用傳入的函數 foo，這樣才能看到打印的輸出
}

void bar(){
  print("bar被調用");
}