void main(List<String> args) {
  // 1.基礎 for 循環
  for(var i = 0;i<3;i++){
    print(i);
  }

  // 遍歷數組
  var name = ["Leo","Jone","Mark"];
  for(var i = 0;i<name.length;i++){
    print(name[i]);
  }

  // for in
  for(var list in name){
    print(list);
  } 
}