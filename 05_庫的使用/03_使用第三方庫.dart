import 'package:http/http.dart' as http; // 必須導入 http 庫

void main() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1'); // 定義 URL
  var response = await http.get(url); // 發送 HTTP GET 請求

  if (response.statusCode == 200) {
    print('Response data: ${response.body}'); // 請求成功，輸出響應數據
  } else {
    print('Request failed with status: ${response.statusCode}'); // 請求失敗，輸出狀態碼
  }
}
