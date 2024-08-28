// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Function và Method là gì?

//? Function
//  - Là một khối code thực hiện một nhiệm vụ cụ thể
//    và có thể được gọi từ bất kỳ đâu trong chương trình.

//  - Functions thường đứng độc lập, không thuộc về bất kỳ đối tượng hay lớp nào.

//  - Functions có thể nhận tham số đầu vào và trả về kết quả.

// Function toàn cục
// void main() {
//   int result = add(5, 3); // Gọi function
//   print(result); // In ra: 8
// }

// int add(int a, int b) {
//   return a + b;
// }

//? Method
//  - Là một function nhưng gắn liền với một đối tượng hoặc class cụ thể.

//  - Methods là các thành phần của lớp hoặc đối tượng,
//    và có thể thao tác trên các thuộc tính của đối tượng hoặc lớp mà chúng thuộc về.

//  - Methods cũng có thể nhận tham số đầu vào và trả về kết quả.

// class Calculator {
//   // Instance method
//   int add(int a, int b) {
//     return a + b;
//   }
// }

// void main() {
//   var calculator = Calculator();
//   int result = calculator.add(5, 3);  // Gọi method của đối tượng calculator
//   print(result);  // In ra: 8
// }

//? Static Method
//  - Static methods là methods được định nghĩa với từ khóa static
//    và thuộc về chính lớp đó thay vì các đối tượng cụ thể

//?  - Static methods có thể được gọi trực tiếp từ lớp mà không cần tạo đối tượng.
//?  - Chỉ có static variable mới có thể dc truy xuất, thao tác bên trong static method.

//  - Static methods có một số đặc điểm giống với functions, nhưng vẫn là một phần của lớp.
// void main() {
//   int result =
//       MathUtils.multiply(5, 3); // Gọi static method mà không cần tạo đối tượng
//   print(result); // In ra: 15
// }

// class MathUtils {
//   // Static method
//   static int c = 20;

//   static int multiply(int a, int b) {
//     print("Giá trị của c là: ${c.toString()}");
//     return a * b;
//   }
// }

//! Khi nào sử dụng Function và Method:

//? Function:
//  Sử dụng khi bạn cần một khối mã thực hiện một tác vụ chung, không liên quan đến bất kỳ đối tượng cụ thể nào.

//? Method:
// Sử dụng khi bạn cần một khối mã liên quan đến một lớp hoặc đối tượng cụ thể,
// thường thao tác trên các thuộc tính của đối tượng đó.
