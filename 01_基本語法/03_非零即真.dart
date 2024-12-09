void main(List<String> args) {
  var flag = true;
  if(flag){
    print("執行代碼");
  }

  int value = 10;

  // 錯誤示例：會產生錯誤，因為條件不是布林型
  // if (value) {
  //   print("執行代碼2");
  // }

  // 正確示例
  if (value != 0) {
    print("執行代碼2");
  }
}