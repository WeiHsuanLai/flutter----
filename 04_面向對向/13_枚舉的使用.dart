// 枚舉 enum
void main(List<String> args) {
  // final color = Colors.red;
  // final color = Colors.blue;
  final color = Colors.green;

  switch(color){
    case Colors.red:
      print("紅色");
      break;
    case Colors.blue:
      print("藍色");
      break;
    case Colors.green:
      print("綠色");
      break;
  }

  print(Colors.values);
  print(Colors.red.index); //獲得索引值
}



enum Colors{
  red,
  blue,
  green
}