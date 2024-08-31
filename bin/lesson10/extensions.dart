//! Extension
// Extension trong Dart là một tính năng cho phép bạn mở rộng chức năng
// của các lớp hiện có mà không cần kế thừa hoặc sửa đổi code của lớp đó

//! Khi nào nên sử dụng Extension?
// - Khi bạn muốn mở rộng chức năng của một lớp mà không cần tạo ra một lớp con.
// - Khi bạn muốn giữ mã nguồn của mình gọn gàng
//   và dễ đọc bằng cách thêm các chức năng vào lớp theo cách mô-đun.

//! Cách định nghĩa Extension
// Bạn có thể định nghĩa một extension bằng cách sử dụng từ khóa extension,
// theo sau là tên của extension và từ khóa on,
// rồi đến kiểu dữ liệu mà bạn muốn mở rộng.

// void main() {
//   String example = "Dart Flutter";

//   // Sử dụng phương thức mới reversed

//   print(example.reversed); // In ra: traD

//   // Sử dụng phương thức mới isNumeric
//   print(example.isNumeric); // In ra: false

//   String number = "12345";
//   print(number.isNumeric); // In ra: true
// }

// extension StringExtensions on String {
//   // Thêm một phương thức để kiểm tra chuỗi có phải là một số hay không
//   bool get isNumeric {
//     return double.tryParse(this) != null;
//   }

//   // Thêm một phương thức mới để đảo ngược chuỗi
//   String get reversed {
//     return split('').reversed.join('');
//   }
// }

//! Bài tập
//  - 1 extension cho phép chuyển 1 con số đại diện cho nhiệt độ
//    nhiệt độ này có thể đổi từ độ C sang độ F và ngược lại

//  - 1 extension để thêm ký tự °C hoặc °F vào đuôi

//? Công thức tính:
// C = (5/9)*(F - 32)
// F = (9/5)*C + 32

//! Cách định nghĩa Extension
// Bạn có thể định nghĩa một extension bằng cách sử dụng từ khóa extension,
// theo sau là tên của extension và từ khóa on,
// rồi đến kiểu dữ liệu mà bạn muốn mở rộng.

// void main(List<String> args) {
//   final temperatureInC = 40.5;
//   final temperatureInF = temperatureInC.toF;

//   print("Độ C là: ${temperatureInC.addCKeyword}");
//   print("Độ F là: ${temperatureInF.addFKeyword}");
// }

// extension TemperatureConvert on double {
//   double get toC => (5 / 9) * (this - 32);
//   double get toF => (9 / 5) * this + 32;

//   double toFVer2() => (9 / 5) * this + 32;
// }

// extension TemperatureKeyword on double {
//   String get addCKeyword => "$this°C";
//   String get addFKeyword => "$this°F";
// }
