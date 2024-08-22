import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  //! Operator
  // Toán tử là các ký hiệu dùng để tính toán, logic, gán, v.v được sử dụng nhiều trong việc lập trình

  // Trong Dart, có nhiều loại toán tử, bao gồm:
  //? số học
  //? so sánh
  //? gán
  //? logic
  //? kiểm tra kiểu
  //? bitwise và shift

  //! Unary postfix (toán tử đơn hậu tố)
  // Toán tử này áp dụng sau 1 biểu thức (expression)
  // bao gồm các toán tử:
  //  - tăng giảm hậu tố
  //  - gọi hàm
  //  - truy cập mảng
  //  - kiểm tra null

  // //?  tăng giảm hậu tố
  // int x = 5;
  // x++; // Tăng giá trị x lên 1 (x = x +1)

  // print(x);
  // x--;
  // print(x);

  // //? gọi hàm
  // gọi là 1 hành động gọi tới 1 hàm đã dc định nghĩa,
  // để thực thi đoạn code trong hàm đó và nhận lại kết quả (nếu có)
  // cú pháp: tên của hàm + ()
  // () chính là toán tử đơn hậu tố
  // int add(int a, int b) {
  //   return a + b;
  // }

  // int result = add(3, 5); // gọi hàm add vs param truyền vào là 3 và 5
  // print(result);

  // //? truy cập mảng
  // List<int> numbers = [1, 2, 3];
  // print(numbers[0]); // Truy cập phần tử đầu tiên trong danh sách, in ra 1

  // //? kiểm tra null
  // String? name;
  // // Sử dụng toán tử ?. để kiểm tra null an toàn, in ra null
  // print(name?.length);

  // //! Unary prefix (Toán tử đơn tiền tố)
  //  Toán tử này áp dụng trước một biểu thức.
  // Unary prefix bao gồm:
  //  - phủ định,
  //  - phủ định bit,
  //  - tăng giảm tiền tố
  // //? phủ định
  // int y = 3;
  // int z = -y; // z = Phủ định y
  // print(z); // In ra -3

  // //? phủ định bit
  // bool isTrue = false;
  // print(!isTrue); // Phủ định giá trị boolean, in ra true

  // //? tăng giảm tiền tố
  // y = 5;
  // ++y; // Tăng y lên trước khi sử dụng (y = 6)
  // print(y); // In ra 6

  // So sánh ++e hoặc e++
  // int e = 3;
  // print("e: $e");
  // int f = e++;
  // print("f: $f, e: $e");
  // int g = ++e;
  // print("g: $g, e: $e");

  // //! Multiplicative (Toán tử nhân chia)
  // Bao gồm các toán tử nhân (*), chia (/), chia lấy phần nguyên (~/), và lấy phần dư (%).
  // int a = 10;
  // int b = 3;
  // print(a * b); // Nhân, in ra 30
  // print(a / b); // Chia, in ra 3.3333333333333335
  // print(a ~/ b); // Chia lấy phần nguyên, in ra 3
  // print(a % b); // Lấy phần dư, in ra 1

  // // //! Additive (Toán tử cộng trừ)
  // int c = 10;
  // int d = 5;
  // print(c + d); // Cộng, in ra 15
  // print(c - d); // Trừ, in ra 5

  //! Relational and type test (Toán tử so sánh và kiểm tra kiểu)
  // // Bao gồm các toán tử so sánh (>, <, >=, <=),
  // // ép kiểu (as), và kiểm tra kiểu (is, is!).
  // int h = 10;
  // int i = 20;
  // print(h > i); // So sánh lớn hơn, in ra false
  // print(h <= i); // So sánh nhỏ hơn hoặc bằng, in ra true

  // dynamic j = "Hello";
  // print(j is String); // Kiểm tra j có phải kiểu String không, in ra true
  // print(j); // Ép kiểu j thành String, in ra Hello

  // //! Equality (Toán tử so sánh bằng nhau và khác nhau)
  // // So sánh bằng nhau (==) và khác nhau (!=).
  // int k = 10;
  // int l = 10;
  // int m = 5;
  // print(k == l); // So sánh bằng, in ra true
  // print(k != m); // So sánh khác, in ra true

  // //! Logical AND, OR (Toán tử logic AND, OR)
  // Toán tử logic AND (&&) và OR (||), được sử dụng để kết hợp các biểu thức logic.
  // bool n = true;
  // bool o = false;
  // // if (is2047 && isNearly2048) {
  // //   print("take a break");
  // // }
  // print(n && o); // AND logic, in ra false
  // print(n || o); // OR logic, in ra true

  //! If null (Toán tử kiểm tra null)
  // Toán tử kiểm tra null (??) được sử dụng để trả về giá trị bên phải nếu giá trị bên trái là null.
  // String? p;
  // if (p == null) {
  //   p = "Default value";
  // }
  // String q = p;
  // print("q value is: $p"); // Nếu p là null, in ra "Default value"

  // //! Conditional (Toán tử ba ngôi - ternary operator)
  // // Toán tử điều kiện (? :) được sử dụng để chọn giữa hai giá trị dựa trên một điều kiện.
  // int r = 4;
  // String result1 = r > 5 ? "Lớn hơn 5" : "Nhỏ hơn hoặc bằng 5";
  // print(result1); // In ra "Lớn hơn 5"

  // //! Cascade (Toán tử cascade)
  // // Toán tử cascade (..) cho phép bạn thực hiện nhiều phép gán
  // // hoặc gọi hàm trên cùng một đối tượng mà không cần lặp lại tên của đối tượng đó.
  // var s = StringBuffer()
  //   ..write("Hello")
  //   ..write(" ")
  //   ..write("World!");
  // print(s.toString()); // In ra "Hello World!"

  // //! Assignment (Toán tử gán)
  // // Toán tử gán (=, +=, -=, *=, /=, %=, v.v.) được sử dụng để gán giá trị cho biến.
  // int t = 5;
  // t += 3; // t = t + 3, in ra 8
  // print(t); // In ra 8

  // t *= 2; // t = t * 2, in ra 16
  // print(t); // In ra 16

  // //! Dart control flow
  // là các câu lệnh dùng để điều khiển flow chạy code của Dart
  // giúp quyết định khi nào các đoạn code sẽ được thực hiện, lặp lại, hoặc bỏ qua.
  // các câu lệnh control flow bao gồm:
  //? for, while, do while loops
  //? break và continue
  //? if và switch
  //? try catch và throw

  // //! Câu lệnh if, else if, và else
  // Câu lệnh if kiểm tra một điều kiện và thực thi đoạn mã bên trong nếu điều kiện đó đúng (true).
  // Bạn có thể mở rộng với else if để kiểm tra các điều kiện khác,
  // và else để thực hiện đoạn mã nếu tất cả các điều kiện trên đều sai.
  // int age = 11;

  // if (age >= 18) {
  //   print('You are an adult.');
  // } else if (age >= 13) {
  //   print('You are a teenager.');
  // } else if (age >= 10 && age <= 12) {
  //   print('Special man');
  // } else if (age >= 10 && age <= 12) {
  //   print('Special man');
  // } else if (age >= 10 && age <= 12) {
  //   print('Special man');
  // } else if (age >= 10 && age <= 12) {
  //   print('Special man');
  // } else {
  //   print('You are a child.');
  // }

  // switch (age) {
  //   case >= 18:
  //     print('You are an adult.');
  //     break;
  //   case >= 13:
  //     print('You are a teenager.');
  //     break;
  //   case >= 10 && <= 12:
  //     print('Special man');
  //     break;
  //   default:
  //     print('You are a child.');
  // }

  //! Câu lệnh switch và case
  // Câu lệnh switch được sử dụng khi bạn có nhiều giá trị tiềm năng cho một biến
  // và bạn muốn thực hiện các hành động khác nhau dựa trên giá trị của biến đó
  // Mỗi giá trị được kiểm tra với một câu lệnh case.

  // String day = 'Tuesday';

  // switch (day) {
  //   case 'Monday':
  //     print('Start of the work week.');
  //     break;
  //   case 'Friday':
  //     print('Almost the weekend!');
  //     break;
  //   case 'Saturday':
  //   case 'Sunday':
  //     print('It\'s the weekend!');
  //     break;
  //   default:
  //     print('Midweek day.');
  // }

  // // //! Vòng lặp for
  // // Vòng lặp for được sử dụng để lặp lại một đoạn mã với số lần nhất định.
  // for (int index = 1; index <= 5; index++) {
  //   print('Number $index');
  // }

  //! Vòng lặp while
  // // Vòng lặp while tiếp tục lặp lại một đoạn mã miễn là điều kiện vẫn đúng.
  // int u = 1;

  // while (u <= 5) {
  //   print('Number $u');
  //   u++;
  // }

  // //! Vòng lặp do-while
  // Vòng lặp do-while tương tự như while,
  // nhưng khác biệt ở chỗ nó đảm bảo rằng đoạn mã sẽ được
  // thực hiện ít nhất một lần trước khi điều kiện được kiểm tra.
  // int e = 6;

  // do {
  //   print('Number $e');
  //   e++;
  // } while (e <= 5);

  // //! Câu lệnh break và continue
  // break: Dừng ngay lập tức vòng lặp hoặc thoát khỏi switch.
  // continue: Bỏ qua phần còn lại của vòng lặp hiện tại và chuyển sang lần lặp tiếp theo.
  // for (int i = 1; i <= 5; i++) {
  //   if (i == 3) {
  //     continue; // Bỏ qua giá trị 3
  //   }
  //   if (i == 5) {
  //     break; // Dừng vòng lặp khi i là 5
  //   }
  //   print('Number $i');
  // }

  // //! try-catch-throw
  // là một phần quan trọng của control flow trong Dart
  // để xử lý các ngoại lệ (exceptions) và các lỗi có thể xảy ra trong quá trình thực thi chương trình

  // Khi bạn dự đoán rằng một đoạn mã có thể gây ra lỗi như:
  //  - chia cho 0,
  //  - truy cập vào một phần tử không tồn tại trong danh sách,
  //  bạn có thể bao quanh đoạn mã đó bằng một khối try-catch để bắt và xử lý lỗi
  //  thay vì để chương trình kết thúc một cách đột ngột.

  // int result = 10 ~/ 0; // Thử chia cho 0, đây là phép toán gây lỗi
  // print(result);

  // try {
  //   // Chứa đoạn mã mà bạn muốn thực thi và dự đoán có thể gây ra lỗi
  //   int result = 10 ~/ 0; // Thử chia cho 0, đây là phép toán gây lỗi
  //   print(result);
  // } catch (e) {
  //   // Chứa đoạn mã để xử lý ngoại lệ nếu có lỗi xảy ra trong try block.
  //   print('Caught an exception: $e'); // Xử lý lỗi và in ra thông báo
  // }

  // //? Sử dụng on để bắt các loại ngoại lệ cụ thể
  // // sử dụng từ khóa on để chỉ định rằng bạn chỉ muốn bắt một loại ngoại lệ cụ thể.
  // // int result = 10 ~/ 0;
  // // print(result);
  // try {
  //   int result = 10 ~/ 0;
  //   print(result);
  // } on IntegerDivisionByZeroException {
  //   print('Cannot divide by zero');
  // } catch (e) {
  //   print('Caught an exception: $e');
  // }

  //? Sử dụng finally để dọn dẹp tài nguyên
  // // finally block được sử dụng để thực hiện các hành động mà bạn muốn thực hiện bất kể ngoại lệ có xảy ra hay không
  // try {
  //   int result = 10 ~/ 0;
  //   print(result);
  // } catch (e) {
  //   print('Caught an exception: $e');
  // } finally {
  //   print('This is always executed');
  // }

  //? throw để tạo ra (hoặc ném) một ngoại lệ (exception)
  // khi bạn muốn chủ động báo hiệu rằng một lỗi đã xảy ra (do bạn định nghĩa điều kiện)
  // trong chương trình của bạn

  // void checkAge(int age) {
  //   if (age < 18) {
  //     throw Exception('You must be at least 18 years old.');
  //   } else {
  //     print('You are eligible.');
  //   }
  // }

  // try {
  //   checkAge(19); // Gọi hàm với giá trị không hợp lệ
  // } catch (e) {
  //   print('Caught an exception: $e'); // Bắt và xử lý ngoại lệ
  // }

  // //! Dart input
  // Để thực hiện nhận giá trị mà người dùng nhập từ bàn phím, sử dụng hàm readLineSync
  print("Enter your name:");
  // Đọc giá trị của name
  // cần phải import thư viện dart.io
  // Tự import 'dart:io'; vào dòng đầu tiên của file
  String? inputedName = stdin.readLineSync(encoding: utf8);
  print("Enter your Student Id:");
  int? studentId = int.tryParse(stdin.readLineSync() ?? '');
  // In ra giá trị của name và studentId
  print("Hello, $inputedName\nYour student ID: $studentId");
  // Để có thể nhập từ bàn phím thì cần phải chạy dart application trên terminal
  // bằng câu lệnh: dart run path-to-dart-file
}
