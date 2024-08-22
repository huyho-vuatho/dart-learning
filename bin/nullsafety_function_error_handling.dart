void main(List<String> args) async {
  //! Null safety
  // Null Safety đảm bảo rằng các biến không thể giữ giá trị null
  // trừ khi bạn cho phép chúng làm như vậy một cách rõ ràng
  // giúp tăng độ an toàn và giảm bớt các lỗi liên quan đến null khi chạy chương trình.

  //! Non-nullable types (Kiểu không cho phép null)
  // Mặc định, các biến trong Dart không thể chứa giá trị null.
  // Nếu bạn khai báo một biến mà không chỉ định nó có thể là null,
  // Dart sẽ đảm bảo rằng biến đó luôn có giá trị không null.
  // int number = 5; // number không thể là null
  // number = null;

  //! Nullable types (Kiểu cho phép null)
  // Nếu bạn muốn cho phép một biến có thể chứa giá trị null,
  // bạn phải chỉ định điều đó bằng cách thêm ? vào sau kiểu dữ liệu.
  // int? maybeNumber;
  // maybeNumber = null; // OK
  // print(maybeNumber);
  // maybeNumber = 5;
  // print(maybeNumber);

  //! Null-aware operators (Toán tử null-aware)
  // ?: Sử dụng để đánh dấu kiểu dữ liệu có thể null.
  // ?.: Toán tử truy cập điều kiện, chỉ thực thi nếu đối tượng không phải là null.
  // ??: Toán tử cung cấp giá trị thay thế nếu giá trị là null.
  // ??=: Gán giá trị mặc định nếu biến là null.
  // String? name;
  // print("The value of name: $name");
  // print("the length of name: ${name?.length}"); // Sẽ in ra null thay vì gây lỗi

  // String greeting = name ?? 'Hello, Guest!';
  // print(greeting); // In ra 'Hello, Guest!'

  // name ??= "John Doe";
  // print("The value of name: $name"); // In ra 'John Doe'

  // //! Late variables (Biến late)
  // Đôi khi, bạn muốn khai báo một biến không-nullable nhưng không thể gán giá trị ngay lập tức.
  // Trong trường hợp này, bạn có thể sử dụng từ khóa late.
  // late đảm bảo rằng biến sẽ được khởi tạo trước khi được sử dụng, nhưng vẫn có thể gán giá trị cho nó sau này.
  // late String description;
  // await Future.delayed(Duration(seconds: 5), () {
  //   return;
  //   description = 'This is a Dart program';
  // });
  // // description = 'This is a Dart program';
  // print(description); // OK vì description đã được khởi tạo

  // //! The ! operator (Toán tử ép buộc không-null)
  // Nếu bạn chắc chắn rằng một biến nullable có giá trị không phải null tại một thời điểm nào đó trong mã
  // bạn có thể sử dụng toán tử ! để ép buộc Dart coi nó là non-nullable.

  // Hãy cẩn thận khi sử dụng !, vì nếu biến thực sự là null, điều này sẽ gây ra lỗi.
  // final intNumber = 3;
  // String? name1;
  // if (intNumber % 2 == 0) {
  //   name1 = 'Alice';
  // }
  // print(name1?.length ?? "name1 null rồi"); // OK vì name không phải là null

  // //! Null safety và Collections (Bộ sưu tập với Null Safety)
  // Các Collection như List, Set, và Map cũng có thể được kiểm soát với Null Safety.
  // Bạn có thể chỉ định liệu các phần tử trong bộ sưu tập có thể là null hay không
  // bằng cách sử dụng ?.
  // List<int?> numbers = [1, 2, null, 4, null]; // Danh sách cho phép giá trị null
  // print("List of nullable integer: $numbers");
  // List<int> nonNullableNumbers = [
  //   1,
  //   2,
  //   3,
  //   4,
  // ]; // Danh sách không cho phép giá trị null
  // print("List of non-nullable integer: $nonNullableNumbers");

  //! Function
  // Function trong Dart là một đoạn code có thể được gọi để thực thi một nhiệm vụ cụ thể
  // Function giúp bạn tổ chức code của mình thành các đoạn code có thể tái sử dụng,
  // giúp code trở nên rõ ràng, dễ bảo trì và dễ quản lý hơn.

  // //! Khai báo Function
  // Một function được khai báo bằng cách sử dụng từ khóa 'void' (nếu function không trả về giá trị)
  // hoặc khai báo kiểu trả về của nó (nếu function trả về một giá trị).
  // Sau đó, bạn viết tên function và các tham số-parameter (nếu có) trong dấu ngoặc tròn ()
  // và phần thân function trong dấu ngoặc nhọn {}.

  // Function không trả về giá trị
  // void sayHello() {
  //   print('Hello, World!');
  // }

  // Function trả về giá trị
  // Function có thể có tham số, cho phép bạn truyền dữ liệu vào function khi gọi nó.
  // Tham số được khai báo trong dấu ngoặc tròn ().
  // int add(int a, int b) {
  //   // Function có thể trả về một giá trị sử dụng từ khóa return.
  //   // Kiểu trả về của function cần được khai báo trước tên function.
  //   return a + b;
  // }

  //! Gọi Function
  // Để sử dụng một function, bạn chỉ cần gọi tên function đó và truyền các tham số nếu có.
  // sayHello(); // Gọi function sayHello

  // int result = add(5, 3); // Gọi function add và lưu kết quả
  // print(result); // In ra 8

  //! Optional Parameters (Tham số tùy chọn)
  // Trong Dart, bạn có thể định nghĩa các tham số tùy chọn cho function.
  // Có hai loại tham số tùy chọn

  //? Tham số tùy chọn có dấu ngoặc vuông []: Các tham số này có thể có hoặc không khi gọi function.
  //? Tham số có tên {}: Cho phép bạn đặt tên cho các tham số và không bắt buộc phải truyền theo thứ tự khi gọi.

  // void printMessage(String message, int number) {
  //   print("message là: $message, number: $number");
  // }

  // // // Tham số có tên
  // // void printDetails({String? name, int? age}) {
  // //   print('Name: $name, Age: $age');
  // // }

  // printMessage("huy", 123); // In ra 'Greeting: Hello'

  // // printDetails(age: 123, name: "huy"); // In ra 'Name: Alice, Age: 30'

  // void printMessage2(
  //     {required String? message, required int number, String? prefix}) {
  //   if (prefix != null) {
  //     print('$prefix: $message');
  //   } else {
  //     print("message là: $message, number: $number");
  //   }
  // }

  // printMessage2(message: "huy", number: 456);
  // printMessage2(message: "huy", number: 456, prefix: "abcd");

  // //! Example: Viết 1 hàm trả về List số tự nhiên từ 0 đến con số bạn nhập vào
  // //? Input: 8
  // //? Output: [0, 1, 2, 3, 4, 5, 6, 7, 8]
  // List<int> returnListNumber({required int number}) {
  //   List<int> listNumber = [];
  //   for (int i = 0; i <= 8; i++) {
  //     listNumber.add(i);
  //   }
  //   return listNumber;
  // }

  // final result = returnListNumber(number: 8);
  // print(result);

  //! Anonymous Functions (Hàm ẩn danh)
  // Dart hỗ trợ khai báo hàm ẩn danh (còn gọi là hàm lambda),
  // thường được sử dụng cho các hàm đơn giản hoặc hàm dùng một lần.
  // multiply(int a, int b) => a * b;

  // print(multiply(3, 4)); // In ra 12

  //! Arrow Functions (Hàm mũi tên)
  // Dart cho phép bạn sử dụng cú pháp hàm mũi tên => để viết các hàm ngắn gọn hơn,
  // đặc biệt hữu ích khi hàm chỉ có một biểu thức.
  // int square(int x) => x * x;
  // print(square(5)); // In ra 25

  // //! Recursive Functions (Hàm đệ quy)
  // Function đệ quy là function tự gọi chính nó.
  // Thường được sử dụng cho các bài toán lặp lại như tính giai thừa hoặc duyệt qua cấu trúc dữ liệu đệ quy.
  // Trong hàm sẽ có điều kiện để kết thúc đệ quy
  // int factorial(int n) {
  //   if (n <= 1) return 1;
  //   return n * factorial(n - 1);
  // }

  // print(factorial(5)); // In ra 120

  // //! Error handling
  // Error Handling trong Dart là quá trình xác định, bắt và xử lý các lỗi (errors) hoặc ngoại lệ (exceptions)
  // xảy ra trong quá trình thực thi chương trình

  // đảm bảo rằng ứng dụng của bạn không bị dừng đột ngột
  // hoặc gặp phải các tình huống lỗi mà không được xử lý.

  //! Exception
  // Ngoại lệ là các sự kiện bất thường xảy ra trong quá trình thực thi chương trình,
  // chẳng hạn như chia một số cho 0, truy cập vào một chỉ số không hợp lệ trong danh sách, hoặc không tìm thấy tệp tin.
  // Ngoại lệ thường khác với lỗi (error) vì chúng có thể được dự đoán và xử lý.

  //! Cơ chế xử lý ngoại lệ (Exception Handling)
  // Dart cung cấp các cấu trúc try, catch, on, finally, và throw để xử lý ngoại lệ.

  //! try và catch
  // try: Dùng để bao quanh đoạn mã mà bạn dự đoán có thể gây ra ngoại lệ.
  // catch: Dùng để bắt ngoại lệ nếu xảy ra và xử lý nó.

  // try {
  //   int result = 10 ~/ 0; // Phép chia gây ra ngoại lệ
  // } catch (e) {
  //   print('Caught an exception: $e');
  // }

  //! on và catch
  //? on: Dùng để bắt một loại ngoại lệ cụ thể.
  // Nếu bạn muốn xử lý các loại ngoại lệ khác nhau theo cách khác nhau,
  // bạn có thể sử dụng nhiều khối on.

  // //? catch: Có thể được sử dụng cùng với on để bắt bất kỳ ngoại lệ nào khác
  //  hoặc để truy cập thông tin chi tiết về ngoại lệ.
  // try {
  //   int result = 10 ~/ 0;
  // } on IntegerDivisionByZeroException {
  //   print('Cannot divide by zero');
  // } catch (e) {
  //   print('Caught an exception: $e');
  // }

  //! finally
  // Dùng để thực hiện các hành động mà bạn muốn thực hiện bất kể ngoại lệ có xảy ra hay không.
  // Thường được sử dụng để dọn dẹp tài nguyên như đóng tệp tin hoặc giải phóng bộ nhớ.
  // try {
  //   int result = 10 ~/ 0;
  // } catch (e) {
  //   print('Caught an exception: $e');
  // } finally {
  //   print('This will always execute');
  // }

  // //! throw
  // Dùng để ném ra một ngoại lệ.
  // Bạn có thể ném ngoại lệ mặc định của Dart hoặc tự định nghĩa một ngoại lệ của riêng mình.
  // void checkAge(int age) {
  //   if (age < 18) {
  //     throw Exception('You must be at least 18 years old.');
  //   }
  // }

  // try {
  //   checkAge(15);
  // } catch (e) {
  //   print('Caught an exception: $e');
  // }

  //! ngoại lệ tuỳ chỉnh:
  void checkAge(int age) {
    if (age < 18) {
      throw AgeException('Age is too low.');
    } else if (age > 60) {
      throw Exception("tuổi quá già");
    }
  }

  try {
    checkAge(61);
  } on AgeException catch (e) {
    print('Caught an exception: ${e.cause}');
  } catch (e) {
    print('Lỗi khác: $e');
  }

  // //!  Assertion (Khẳng định)
  // // assert: assert: Là một cách khác để kiểm tra điều kiện trong mã nguồn,
  // // nhưng chỉ được thực thi trong chế độ debug.
  // // Nếu điều kiện assert không được thỏa mãn, một ngoại lệ sẽ được ném ra.
  // int age = 15;
  // assert(age >= 18, 'Age must be at least 18');
  // print('Age is $age');
}

class AgeException implements Exception {
  String cause;
  AgeException(this.cause);
}
