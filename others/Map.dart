void main() {
  // 1. 定義並初始化一個 Map（學生成績）
  Map<String, int> studentScores = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 78,
  };

  print('原本的成績: $studentScores');

  // 2. 新增學生成績
  studentScores['David'] = 88;
  print('新增後的成績: $studentScores'); // {Alice: 85, Bob: 92, Charlie: 78, David: 88}

  // 3. 更新某位學生的成績
  studentScores['Alice'] = 90;
  print('更新後的成績: $studentScores'); // {Alice: 90, Bob: 92, Charlie: 78, David: 88}

  // 4. 刪除學生成績
  studentScores.remove('Charlie');
  print('刪除後的成績: $studentScores'); // {Alice: 90, Bob: 92, David: 88}

  // 5. 檢查是否包含某位學生
  bool hasBob = studentScores.containsKey('Bob');
  print('是否有 Bob 的成績: $hasBob'); // true

  // 6. 遍歷 Map
  print('遍歷成績:');
  studentScores.forEach((name, score) {
    print('$name 的成績是 $score');
  });

  // 7. 獲取所有學生的名字和成績
  List<String> studentNames = studentScores.keys.toList();
  List<int> scores = studentScores.values.toList();
  print('學生名單: $studentNames'); // [Alice, Bob, David]
  print('成績列表: $scores');       // [90, 92, 88]

  // 8. 計算平均分數
  double averageScore = scores.reduce((a, b) => a + b) / scores.length;
  print('平均分數: ${averageScore.toStringAsFixed(2)}'); // 平均分數: 90.00

  // 9. 清空成績
  studentScores.clear();
  print('清空後的成績: $studentScores'); // {}
}
