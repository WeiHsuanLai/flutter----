// 關閉靜態型別檢查：將變數的型別指定為 dynamic 後，Dart 編譯器會跳過靜態型別檢查，直到執行階段才進行型別驗證。
// 更靈活但更危險：因為沒有編譯時的型別安全性檢查，可能會導致執行時出錯。

void main() {
  dynamic dyn = "Hello, Dart!";
  
  print(dyn.length); // OK：編譯器不會檢查型別
  
  dyn = 42; 
  // print(dyn.length); // 執行時出錯：int 沒有 length 屬性
}

// 用於需要極度靈活的情況，像是動態生成的資料（例如解析 JSON）。
// 但應謹慎使用，因為缺乏靜態檢查會增加錯誤風險。