//! Thư viện
// Thư viện là các đoạn code hay chức năng dc phát triển bởi Lập trình viên khác đóng góp
// Chúng ta có thể sử dụng thư viện để tối ưu hiệu suất công việc
// Tránh việc viết lại 1 chức năng đã có trên cộng đồng thư viện

//! Ví dụ sử dụng thư viện
// Để viết một extension cho num về việc hiển thị giá tiền Việt Nam, có dấu , và . để phân tách chữ số.
// Chúng ta sẽ phải chia phần ngàn, sau đó add separator, rồi thêm postfix
// => Rất dài dòng và phức tạp logic

// Khi đó sử dụng thư viện intl để tăng tốc và có thêm nhiều method hay ho khác

// import 'package:intl/intl.dart';

// void main(List<String> args) {
//   final amount = 100000;
//   final vnCurrencyFormat = NumberFormat.currency(locale: "vi_VN", symbol: "đ");
//   print(vnCurrencyFormat.format(amount));
// }

//! Bài tập
// Sử dụng kiểu dữ liệu DateTime, Duration và thư viện https://pub.dev/packages/date_format,

//? 1. In DateTime thành kiểu String dễ đọc với đủ thông tin: thứ ngày tháng năm, giờ phút giây, múi giờ
// import 'package:date_format/date_format.dart';

// void main() {
//   DateTime now = DateTime.now();

//   // Định dạng thời gian hiện tại
//   String formattedDate = formatDate(now, [
//     'Thứ ',
//     'DD',
//     ', ',
//     dd,
//     '/',
//     mm,
//     '/',
//     yyyy,
//     ' - ',
//     HH,
//     ':',
//     nn,
//     ':',
//     ss,
//     ' ',
//     'múi giờ ',
//     z,
//   ]);

//   print('Thời gian hiện tại: $formattedDate');
// }

//? 2. Viết hàm kiểm tra ngày X có phải thứ 7, chủ nhật hay không?

// void main() {
//   DateTime date = DateTime.now();
//   print('Ngày hiện tại có phải cuối tuần không: ${isWeekend(date)}');
// }

// bool isWeekend(DateTime date) {
//   return date.weekday == DateTime.saturday || date.weekday == DateTime.sunday;
// }

//? 3. Viết hàm để tính bao nhiêu ngày nữa là đến lễ 30/4/2024
// int daysUntilNextHoliday() {
//   DateTime today = DateTime.now();
//   DateTime holiday = DateTime(2024, 4, 30);

//   return holiday.difference(today).inDays;
// }

// void main() {
//   print('Còn ${daysUntilNextHoliday()} ngày nữa đến 30/4/2024');
// }
