void main(List<String> args) {
  // ??=: 當原來的變量有值時，那麼 ??= 不執行
  // 原來的變量為 null ，那麼將賦值給這個變量
  // var name = "why";
  // name ??="leo";
  // print(name);

  // ??:
  // ?? 前面有值，就使用 ?? 前面的數據
  // ?? 前面的數據為 null，就使用後面的變量
  var name = null;
  var temp = name ?? "Leo";
  print(temp);
}