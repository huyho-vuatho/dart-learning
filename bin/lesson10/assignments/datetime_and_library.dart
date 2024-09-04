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