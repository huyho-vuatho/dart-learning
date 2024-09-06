//! 1. Stream trong Dart
/*
?   Stream là một đối tượng trong Dart cho phép bạn làm việc với một chuỗi các giá trị bất đồng bộ. 
?   Thay vì nhận tất cả dữ liệu cùng một lúc, 
?   bạn có thể nhận dữ liệu theo thời gian, khi dữ liệu có sẵn. 
?   Đây là cách để xử lý các sự kiện, chẳng hạn như thông báo từ API, dữ liệu từ các tệp lớn
*/

//! 2. Các loại Stream:
//? Single subscription stream:
//  Stream này chỉ cho phép một listener (người lắng nghe) tại một thời điểm.
//  Đây là loại phổ biến nhất và thường được sử dụng để xử lý các sự kiện.

//? Broadcast stream:
//  Stream này có thể có nhiều listener cùng một lúc.
//  Đây là loại thường được sử dụng cho các sự kiện phát sóng rộng rãi, như thông báo trạng thái hệ thống.

//! 3. ví dụ đơn giản về việc sử dụng Stream

// void main() async {
//   //? await for

//   //! Lắng nghe Stream
//   //? Cách 1:
//   //? Để lắng nghe một stream, bạn sử dụng cú pháp await for
//   // để xử lý từng giá trị của stream khi nó có sẵn hoặc có giá trị.
//   // await for (int value in countStream(5)) {
//   //   print('Nhận: $value');
//   // }

//   //? Cách 2:
//   countStream(5).listen((value) {
//     print('Nhận: $value');
//   });
// }

//? Khi tạo một stream, bạn sử dụng async*
//  để định nghĩa một hàm sinh ra stream
// Stream<int> countStream(int max) async* {
//   for (int i = 1; i <= max; i++) {
//     await Future.delayed(Duration(seconds: i + 1));

//     //? keyword yield để cung cấp các giá trị cho stream.
//     print("Yield value sau ${i + 1} giây");
//     yield i;
//   }
// }

//! 4. Bài tập 1: Sử dụng Stream
//? Mô tả:
/*
  Bạn sẽ tạo một chương trình đếm ngược thời gian từ một số nguyên dương n về 0, 
  với mỗi lần đếm sẽ cách nhau 1 giây. 
  Sử dụng Stream để phát từng giá trị của bộ đếm và lắng nghe stream này để in ra từng giá trị.
*/

//? Yêu cầu:
/*
  1. Tạo một hàm countdownStream(int n) trả về một Stream<int> 
    sử dụng async* và yield để phát ra các giá trị từ n về 0.

  2. Trong hàm main(), lắng nghe countdownStream và in ra từng giá trị khi nó được phát ra.

  3. Khi bộ đếm về 0, in ra dòng "Countdown complete!".
*/

// Stream<int> countdownStream(int n) async* {
//   for (int i = n; i >= 0; i--) {
//     await Future.delayed(Duration(seconds: 1));
//     yield i;
//   }
// }

// void main() async {
//   print('Bắt đầu đếm ngược:');

//   await for (int value in countdownStream(5)) {
//     print('Đếm: $value');
//   }

//   print('Countdown complete!');
// }

//! 5. StreamController
/*
  StreamController là một đối tượng cho phép bạn tạo và kiểm soát một Stream. 
  Nó cung cấp một cách để bạn có thể thêm dữ liệu, lỗi, 
  hoặc đóng stream từ bên ngoài. 
  
  StreamController rất hữu ích khi bạn muốn kiểm soát hoàn toàn cách thức 
  và thời điểm mà dữ liệu được phát vào một stream.
*/

//? Ví dụ 1: Tạo và sử dụng StreamController:
// import 'dart:async';

// void main() async {
//   // Tạo StreamController

//   //? 1. StreamController:
//   //  Làm việc như một "người phát" dữ liệu (publisher) cho một stream.
//   //  Nó có thể kiểm soát khi nào dữ liệu được thêm vào stream, và khi nào stream được đóng.
//   final StreamController<int> controller = StreamController<int>();

//   // Lắng nghe stream
//   //? 2. controller.stream.listen
//   //  Để lắng nghe dữ liệu từ stream và xử lý nó
//   controller.stream.listen(
//     (value) => print('Nhận dc: $value'),
//     onDone: () => print('Đóng và kết thúc StreamController'),
//   );

//   // Thêm dữ liệu vào stream
//   //? 3. sink.add():
//   // Dùng để thêm dữ liệu vào stream
//   await Future.delayed(Duration(seconds: 1), () {
//     controller.sink.add(1);
//   });
//   await Future.delayed(Duration(seconds: 2), () {
//     controller.sink.add(2);
//   });
//   await Future.delayed(Duration(seconds: 3), () {
//     controller.sink.add(3);
//   });

//   // Đóng stream khi hoàn tất
//   //? controller.close()
//   // Đóng stream khi không còn dữ liệu nào được phát đi.
//   // Nếu không gọi phương thức này, stream có thể tiếp tục mở và gây rò rỉ bộ nhớ.
//   controller.close();
// }

// //? Ví dụ 2: Tạo và sử dụng StreamController
// import 'dart:async';

// void main(List<String> args) async {
//   final streamDemo = StreamDemo();
//   streamDemo.demoStream.listen(
//     (event) {
//       print("event value: $event");
//     },
//     onError: (err) {
//       print('Error!!!. $err');
//     },
//     onDone: () {
//       print('Stream is done and closed');
//     },
//   );

//   for (int i = 0; i < 4; i++) {
//     if (i % 2 == 0) {
//       streamDemo.addError();
//     } else {
//       streamDemo.increment();
//     }
//     await Future.delayed(Duration(seconds: 2));
//   }

//   streamDemo.dispose();
// }

// class StreamDemo {
//   int _counter = 0;
//   int _errCounter = 0;

//   //? Controller có thể sink data, sink error và close
//   final _controller = StreamController<int>();

//   Stream<int> get demoStream => _controller.stream;

//   void addError() {
//     _errCounter += 1;
//     _controller.sink.addError(
//         Error.safeToString('This is an Error \$$_errCounter in Stream'));
//   }

//   void dispose() {
//     _controller.close();
//   }

//   void increment() {
//     _counter += 1;
//     _controller.sink.add(_counter);
//   }
// }

//! Bài tập 2: Sử dụng StreamController

//?Mô tả:
/*
Bạn sẽ tạo một chương trình mô phỏng việc nhận dữ liệu cảm biến nhiệt độ từ một cảm biến giả lập. 
Sử dụng StreamController để phát dữ liệu cảm biến này và lắng nghe stream để in ra giá trị nhiệt độ.
*/

//? Yêu cầu:
/* 
  1. Tạo một StreamController<double> để quản lý luồng dữ liệu nhiệt độ.
  2. Tạo một hàm generateTemperature để mô phỏng việc phát nhiệt độ ngẫu nhiên trong khoảng từ 20.0°C đến 30.0°C mỗi 2 giây.
  3. Trong hàm main(), lắng nghe stream và in ra nhiệt độ mỗi khi có giá trị mới.
  4. Đảm bảo đóng StreamController sau khi hoàn thành.
*/

// import 'dart:async';
// import 'dart:math';

// void main() {
//   // Tạo StreamController cho luồng dữ liệu nhiệt độ
//   final StreamController<double> controller = StreamController<double>();

//   // Lắng nghe stream và in ra giá trị nhiệt độ
//   controller.stream.listen(
//     (temp) => print('Nhiệt độ hiện tại: ${temp.toStringAsFixed(2)}°C'),
//     onDone: () => print('Kết thúc phát dữ liệu cảm biến.'),
//   );

//   // Bắt đầu phát dữ liệu cảm biến
//   generateTemperature(controller);
// }

// void generateTemperature(StreamController<double> controller) async {
//   Random random = Random();

//   for (int i = 0; i < 10; i++) {
//     await Future.delayed(Duration(seconds: 2));
//     double temp = 20 +
//         random.nextDouble() * 10; // Tạo nhiệt độ ngẫu nhiên từ 20.0 đến 30.0
//     controller.sink.add(temp);
//   }

//   // Đóng stream sau khi phát đủ dữ liệu
//   controller.close();
// }
