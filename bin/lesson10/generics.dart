//! Generic
// Trong nhiều trường hợp, bạn muốn viết một lớp hoặc một hàm mà có thể làm việc với nhiều loại dữ liệu khác nhau,
// nhưng vẫn giữ được tính an toàn kiểu dữ liệu.
// Thay vì phải viết các phiên bản khác nhau của cùng một lớp hoặc hàm cho từng kiểu dữ liệu,
// bạn có thể sử dụng Generic để làm điều này.

//? Generic là dung một ký tự nào đó ví dụ như E, T, K, V,...
//? để đại diện cho một kiểu dữ liệu chưa biết khi viết hàm hoặc method,
//? nhưng khi sử dụng thì phải truyền kiểu dữ liệu mong muốn vào.

//! Cách sử dụng Generic

//? Generic trong lớp (Class Generics)
// Bạn có thể định nghĩa một lớp với các tham số kiểu (type parameters) để lớp có thể hoạt động với nhiều kiểu dữ liệu khác nhau.

//? Box<T>: Đây là một lớp generic với tham số kiểu T.
// Điều này có nghĩa là T có thể là bất kỳ kiểu dữ liệu nào, và Box sẽ lưu trữ một giá trị của kiểu đó.
// class Box<T> {
//   T value;

//   Box(this.value);

//   void updateValue(T newValue) {
//     value = newValue;
//   }

//   T getValue() {
//     return value;
//   }
// }

// void main() {
//   //? Khi tạo một đối tượng của Box, bạn chỉ định kiểu dữ liệu cụ thể mà Box sẽ làm việc với

//   // Box cho kiểu int
//   Box<int> intBox = Box(123);
//   print('Integer value: ${intBox.getValue()}'); // In ra: Integer value: 123

//   // Box cho kiểu String
//   Box<String> stringBox = Box('Hello');
//   print('String value: ${stringBox.getValue()}'); // In ra: String value: Hello

//   // Cập nhật giá trị trong Box
//   intBox.updateValue(456);
//   print('Updated integer value: ${intBox.getValue()}'); // In ra: Updated integer value: 456
// }

//! Generic trong hàm (Function Generics)
// Hàm cũng có thể sử dụng Generic để làm việc với nhiều loại dữ liệu khác nhau.

//? Đây là một hàm generic với tham số kiểu T.
//? Điều này có nghĩa là hàm findMax có thể hoạt động với bất kỳ kiểu dữ liệu nào mà T đại diện,
//? miễn là kiểu đó triển khai giao diện Comparable.

//? Comparable: Comparable là một giao diện (interface) trong Dart được sử dụng để so sánh các đối tượng với nhau.
// Khi một lớp triển khai giao diện Comparable,
// nó cần cung cấp một phương thức có tên là compareTo để xác định cách so sánh hai đối tượng của lớp đó

// void main() {
//   print('Max int: ${findMax<num>(10, 20)}'); // In ra: Max int: 20
//   print(
//       'Max string: ${findMax('apple', 'banana')}'); // In ra: Max string: banana
// }

// T findMax<T extends Comparable<T>>(T a, T b) {
//   // Hàm findMax so sánh hai giá trị a và b và trả về giá trị lớn hơn.
//   if (a.compareTo(b) > 0) {
//     return a;
//   } else {
//     return b;
//   }
// }

//! Generic trong Interface
// // Generic cũng có thể được sử dụng trong Interface để tạo các Interface làm việc với nhiều loại dữ liệu khác nhau.
// void main() {
//   Storage<int> intStorage = MemoryStorage<int>();
//   intStorage.addItem(123);
//   print('Stored int: ${intStorage.getItem()}'); // In ra: Stored int: 123

//   Storage<String> stringStorage = MemoryStorage<String>();
//   stringStorage.addItem('Hello');
//   print(
//       'Stored string: ${stringStorage.getItem()}'); // In ra: Stored string: Hello
// }

// class MemoryStorage<T> implements Storage<T> {
//   T? _item;

//   @override
//   void addItem(T item) {
//     _item = item;
//   }

//   @override
//   T? getItem() {
//     return _item;
//   }
// }

// abstract class Storage<T> {
//   void addItem(T item);
//   T? getItem();
// }

//! Bài Tập: Quản lý Bộ Sưu Tập Các Món Hàng

//? Mô tả:
/*
  - Tạo một ứng dụng để quản lý bộ sưu tập các món hàng (items) trong một cửa hàng
  - Mỗi món hàng có thể thuộc các loại khác nhau, chẳng hạn như Sách (Book), Điện thoại (Phone), hoặc Thực phẩm (Food)
  - Bạn sẽ sử dụng Generic để tạo ra một lớp quản lý bộ sưu tập mà có thể làm việc với nhiều loại món hàng khác nhau.
*/

//? Yêu cầu:
/*

1. Tạo các lớp đại diện cho món hàng:

  - Book: Có các thuộc tính title, author, price.
  - Phone: Có các thuộc tính brand, model, price.
  - Food: Có các thuộc tính name, expirationDate, price.


2. Tạo lớp ItemCollection sử dụng Generic:
  - Quản lý bộ sưu tập các món hàng với các loại khác nhau.
  - Thuộc tính: items (danh sách các món hàng).
  - Phương thức:
      - addItem(T item): Thêm một món hàng vào bộ sưu tập.
      - removeItem(T item): Xóa một món hàng khỏi bộ sưu tập.
      - getItems(): Trả về danh sách các món hàng trong bộ sưu tập.
      - calculateTotalPrice(): Tính tổng giá trị của tất cả các món hàng trong bộ sưu tập.

3. Thực hiện các thao tác trong hàm main():
  - Tạo các đối tượng Book, Phone, và Food.
  - Tạo các đối tượng ItemCollection cho từng loại món hàng.
  - Thêm và xóa các món hàng khỏi bộ sưu tập.
  - Tính và hiển thị tổng giá trị của các món hàng trong mỗi bộ sưu tập.
*/