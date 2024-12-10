void main(List<String> args) {
  // 1.定義字符串類型
  var str1 = 'abc';
  var str2 = 'abc';
  var str3 = """
abc
cba
nba

""";

// 2.字符串和表達式進行拼接
var name = "why";
var age = 19;
var height = 1.88;
// var meesage = "${name},${age}"; 這裡{} 可以省略
var meesage = "$name,$age";
// ${name.runtimeType} 這裡 {} 不能省略
var meesage2 = "$name,${name.runtimeType}  ";
print("meesage:"+meesage);
print("meesage2:"+meesage2);
print("${str1},${str2},${str3},${height}");
}