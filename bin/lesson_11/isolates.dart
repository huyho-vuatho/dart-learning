//! Isolate
// Isolate là khái niệm để giúp Dart có thể chạy song song (parallel), không phải đồng thời (concurrent).
// Isolate gần giống với Thread ở ngôn ngữ khác, nhưng nó không share memory, chỉ giao tiếp qua message.
// Isolate thường ít gặp với developer mới, chủ yếu chỉ sử dụng duy nhất isolate main trong các ứng dụng Dart

//! Tại sao sử dụng Isolate?
//? 1. Dart chạy trên Event Loop, và tất cả các tác vụ mặc định đều chạy trên một luồng chính
//?     Khi một tác vụ nặng (như tính toán lớn hoặc xử lý tệp) chạy trên luồng chính,
//?     nó có thể làm cho giao diện người dùng bị treo hoặc không phản hồi.

//? 2. Isolate giúp xử lý các tác vụ đồng thời mà không ảnh hưởng đến các tác vụ khác trên luồng chính,
//?    bằng cách tách các tác vụ ra thành những phần độc lập,
//?    không chia sẻ bộ nhớ trực tiếp với luồng chính.

//! Vài usecase nên sử dụng isolate
//  - Parsing và decoding những data JSON siêu lớn
//  - Xử lý, nén photo, video hoặc audio.Processing and compressing photos, audio and video.
//  - Thực hiện các tác vụ liên quan đến đọc file, ghi file hệ thống
//  - Thực hiện gọi nhiều request tới network

//! Sử dụng Isolate
// Ở phần này hướng dẫn cách sử dụng Isolate cơ bản => Isolate.run(), nhanh chóng nhưng sẽ khó custom.
// Để custom Isolate là một phạm trù của Dart Advance

// import 'dart:convert'; // Để chuyển đổi JSON
// import 'dart:io';
// import 'dart:isolate'; // Để đọc tệp từ hệ thống tệp

// void main() async {
//   // Đọc dữ liệu JSON và in ra màn hình console
//   //? Sử dụng Isolate.run() để đưa các tác vụ liên quan đến đọc file sang một Isolate khác,
//   //? sau khi đã thực hiện xong thì chỉ cần trả kết quả về
//   Map<String, dynamic> jsonData = await Isolate.run(loadJsonData);
//   print('Name: ${jsonData['name']}');
//   print('Age: ${jsonData['age']}');
//   print('Email: ${jsonData['email']}');
// }

// // Hàm để đọc tệp JSON từ thư mục assets
// Future<Map<String, dynamic>> loadJsonData() async {
//   // Đường dẫn đến tệp JSON
//   final file = File('assets/data.json');

//   // Đọc nội dung tệp
//   String jsonString = await file.readAsString();
//   print("nội dung tệp: $jsonString");

//   // Chuyển đổi chuỗi JSON thành đối tượng Map
//   final jsonResponse = json.decode(jsonString);

//   return jsonResponse;
// }

//! Bài Tập: Xử lý heavy task

import 'dart:async';
import 'dart:isolate';

void main(List<String> args) async {
  var timer = Timer.periodic(Duration(milliseconds: 500), (timer) {
    if (timer.tick % 2 == 0) {
      print('Loading ... ${timer.tick / 2} sec');
    }
  });

  print("Start");
  //? TH1: Ko sử dụng isolate cho heavy task
  // final result = await heavyTask();

  //? TH2: Sử dụng Isolate cho heavy task
  final result = await Isolate.run(heavyTask);
  print("value is: $result");
  print('End');

  timer.cancel();
}

Future<int> heavyTask() async {
  var value = 0;
  for (var i = 0; i < 4000000000; i++) {
    value += i;
  }
  return value;
}


// Mobile: Request lấy thông tin user từ Server

// Server:
//  - Nhận Request từ mobile
//  - Lấy dữ liệu Database (nơi lưu trữ thông tin)
//  - Convert dữ liệu từ Database -> Json Template

// {
//     "name": "huy",
//     "age": 12,
//     "city": "HCMC"
// }

// - Gửi Json Data về Mobile hoặc front-end
// - Mobile: cũng phải convert json -> kiểu dữ liệu mà mobile hiểu và xử lý dc