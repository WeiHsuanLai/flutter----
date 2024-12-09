void main(List<String> args) {
  // 1.列表 List:[] 列表是 Dart 中的有序集合，可以包含重複的元素，類似於其他語言中的「數組」
  var name = ['a','b','c'];
  print(name[0]); // 輸出: a
  name.add('d');
  print(name); // 輸出: [a, b, c, d]

  // 2.集合 set:{} 集合是一種無序且元素唯一的集合。這意味著 Set 中不允許有重複的元素。
  var movies = {'星際大戰','刀劍神域','玩具總動員'};
  movies.add('刀劍神域');
  print(movies); // 輸出: {星際大戰, 刀劍神域, 玩具總動員}
  movies.add('鋼之鍊金術師');
  print(movies); // 輸出: {星際大戰, 刀劍神域, 玩具總動員, 鋼之鍊金術師}
  name = Set<String>.from(name).toList();
  print(name);

  List<int> numbers = [1, 2, 3, 4, 5];

  // 過濾出大於 2 的元素
  Iterable<int> filtered = numbers.where((n) => n > 2);

  // 將結果轉換為列表
  List<int> filteredList = filtered.toList();
  print(filteredList); // 輸出: [3, 4, 5]
  // print(filtered); // 輸出: (3, 4, 5)


  // 3.映射Map 映射是一種鍵值對 (key-value) 的集合，類似於其他語言中的「字典」。
  var info ={
    "name":"why",
    "age":18
  };
  print(info["name"]); // 輸出: why
  info["hobby"] = "programming";
  print(info); // 輸出: {name: why, age: 18, hobby: programming}

  info["age"] = 19;
  print(info); // 輸出: {name: why, age: 19, hobby: programming}

  info.remove("hobby");
  print(info); // 輸出: {name: why, age: 19}
}