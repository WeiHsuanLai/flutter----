/**
 * 1.補充一 : as 關鍵字給庫起別名
 * 
 * 2.補充二 : 默認情況下在導入一個庫時，導入的這個庫中所有的公共屬性和內容
 *   * show : 指定要導入的內容 
 *   * hide : 隱藏某個要導入的內容，導入其它內容
 */

// import 'utils/math_utils.dart' as mUtils;
// import 'utils/math_utils.dart' show sum,mul;
// import 'utils/math_utils.dart' hide mul;
// import 'utils/date_utils.dart';
import'utils/utils.dart';

void main(List<String> args) {
  // print(sum(20, 30));
  print(sum(20, 30));
  // print(mul(20, 30));
  print(dateFormat());
  print(min(20, 30));
  //  print(_min(20, 30)); _下滑線代表私有
}

// void sum(num1,num2){
//   print(num1-num2);
// }