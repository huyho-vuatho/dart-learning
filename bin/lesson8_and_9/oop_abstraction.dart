// ignore_for_file: public_member_api_docs, sort_constructors_first
//! 1. Tính trừu tượng
// Dùng để trừu tượng hoá các yêu cầu của bài toán thành những thực thể chung nhất
// để giúp mở rộng, nâng cấp sau này.

// tính trừu tượng giúp ta xác định nhanh những properties và method
// mà class đó buộc phải có mà chưa cần nghĩ cách thực thi nó ra sao

//? Cách hoạt động trong Dart:
//?   - Trừu tượng hóa được thực hiện thông qua các lớp trừu tượng (abstract classes)
//!   - Abstract class không thể được khởi tạo trực tiếp
//?      mà chỉ có thể làm lớp cha cho các lớp con.
//?   - Các lớp con sẽ kế thừa (extends) hoặc thực thi (implements) các phương thức trừu tượng từ abstract class cha.

//! 2. Abstract class
// abstract class là class trừu tượng, các class khác sẽ kế thừa hoặc thực thi từ class này.
// Mục đích của abstract class giống như 1 bản thiết kế
//  dùng để chỉ định các properties, method phải có trong class con, chứ ko quan tâm nội dung method

//! 3. extends
//? Các lớp con sẽ kế thừa (extends) các phương thức trừu tượng từ abstract class cha
// class Car extends Vehicle {
//   // Nếu thuộc tính trong abstract class không có giá trị khởi tạo, 
//   // thì lớp con cần phải khởi tạo chúng khi tạo đối tượng.
//   final int seatCount;
//   Car({required this.seatCount, required super.odometer});

//   // class con bắt buộc phải override method moveForward.
//   // Bởi vì class cha là abstract nên chỉ defined tên method chứ ko defined nội dung method
//   @override
//   void moveForward(int meter) {}
// }

// abstract class Vehicle {
//   // Abstract Class có thể chứa các thuộc tính có hoặc không có giá trị khởi tạo.
//   int odometer;
//   // Khi bạn định nghĩa thuộc tính của class, bạn bắt buộc phải có constructor
//   Vehicle({required this.odometer});
//   // Vehicle({this.odometer = 10});

//   // Bạn có thể định nghĩa các thuộc tính cụ thể trong abstract class và cung cấp giá trị khởi tạo cho chúng. 
//   // Các lớp con có thể kế thừa và sử dụng trực tiếp các thuộc tính này.

//   // method chỉ khai báo tên, hoàn toàn ko có body
//   void moveForward(int meter);
// }

// void main(List<String> args) {
//   // Abstract class ko thể sử dụng trực tiếp (ko thể khởi tạo), mà phải sử dụng thông qua các lớp con
//   // final vehicle1 = Car(12);
// }

//! Bài tập: Abstraction sử dụng extends
// Bạn sẽ tạo một lớp trừu tượng Employee để quản lý các thông tin cơ bản của nhân viên. 
// Sau đó, bạn sẽ tạo hai lớp con FullTimeEmployee và PartTimeEmployee kế thừa từ lớp trừu tượng này. 
// Mỗi lớp con sẽ có cách tính lương khác nhau.

//? Yêu cầu:
//  - Tạo lớp trừu tượng Employee với các thuộc tính name và age.
//  - Định nghĩa phương thức trừu tượng calculateSalary() trong lớp Employee.
//  - Tạo lớp FullTimeEmployee kế thừa từ Employee với thuộc tính bổ sung monthlySalary 
//    và triển khai phương thức calculateSalary() trả về lương hàng tháng.
//  - Tạo lớp PartTimeEmployee kế thừa từ Employee với thuộc tính bổ sung hourlyRate và hoursWorked. 
//    Triển khai phương thức calculateSalary() trả về lương dựa trên số giờ làm việc và mức lương theo giờ.

//? Kết quả mong đợi:
// In ra lương của nhân viên toàn thời gian và bán thời gian, 
// được tính toán dựa trên cách triển khai cụ thể trong từng lớp con.




//! ******----------------------------------------------------------------******










//! 4. Interface
//? Các lớp con sẽ thực thi (implements) các phương thức trừu tượng từ abstract class cha.
// Trong Dart, interface không có một từ khóa cụ thể
// mà được thể hiện thông qua việc sử dụng từ khóa implements.

// implements được sử dụng khi một lớp muốn thực hiện (implement) một giao diện (interface)
// hoặc muốn triển khai các phương thức được định nghĩa trong một lớp khác nhưng không kế thừa chúng.

//! Đặc điểm Interface
// Khi sử dụng implements, lớp mới phải triển khai
// tất cả các phương thức và thuộc tính của Interface nó đang triển khai, ngay cả khi lớp đó đã có triển khai mặc định.
// abstract class Animal {
//   // Khi bạn định nghĩa thuộc tính trong lớp và sau đó sử dụng lớp này như một interface
//   // các lớp thực hiện (implementing class) phải triển khai (thường là cung cấp giá trị cho) 
//   // tất cả các thuộc tính và phương thức được định nghĩa trong giao diện.

//   // Khác với abstract class, các thuộc tính trong interface dù có giá trị khởi tạo. 
//   // Lớp con thực hiện phải cung cấp giá trị cho các thuộc tính đó.

//   String name; 
//   int age;      
//   Animal({
//      this.name = "",
//      this.age = 1,
//   });
//   void makeSound() {
//     print('Animal sound');
//   }

//   void sleep() {
//     print('Animal is sleeping');
//   }
// }

// class Dog implements Animal {
//   @override
//   void makeSound() {
//     print('Woof!');
//   }

//   @override
//   void sleep() {
//     print('Dog is sleeping');
//   }
  
//   @override
//   int age;
  
//   @override
//   String name;

//   Dog(this.name, this.age);
// }

// void main() {
//   var dog = Dog('Buddy', 3);
//   print('Name: ${dog.name}, Age: ${dog.age}'); // In ra: Name: Buddy, Age: 3
//   dog.makeSound(); // In ra: Woof!
// }

//! Bài tập Interface sử dụng implements
// Bạn sẽ tạo một giao diện Shape để đại diện cho các hình học
// Sau đó, bạn sẽ tạo các lớp Circle và Square thực hiện giao diện này. 
// Mỗi lớp sẽ tính diện tích của hình tương ứng.

//? Yêu cầu:
//  - Tạo giao diện Shape với phương thức area() mà không có phần triển khai.

//  - Tạo lớp Circle thực hiện giao diện Shape. 
//    Lớp này có thuộc tính radius và triển khai phương thức area() để tính diện tích hình tròn.
//    Diện tích hình tròn = Pi(3.14) x radius x radius

//  - Tạo lớp Square thực hiện giao diện Shape. 
//    Lớp này có thuộc tính side và triển khai phương thức area() để tính diện tích hình vuông.
//    Diện tích hình vuông = cạnh x cạnh

//  - Trong phương thức main(), tạo danh sách các đối tượng Shape và in ra diện tích của mỗi hình.

//? kết quả mong đợi
// In ra diện tích của hình tròn và hình vuông, 
// được tính toán dựa trên cách triển khai cụ thể trong mỗi lớp thực hiện giao diện Shape.



//! ******----------------------------------------------------------------******



//! So sánh extends và implements
//? extends: 
//    - Được sử dụng để kế thừa từ một lớp cha duy nhất. 
//    - Lớp con có thể sử dụng lại mã và ghi đè các phương thức của lớp cha.

//? implements: 
//    - Được sử dụng để thực hiện một Interface hoặc lớp, 
//    - Yêu cầu phải triển khai tất cả các phương thức được định nghĩa mà không kế thừa mã từ lớp đó. 
//    - Lớp có thể thực hiện nhiều giao diện hoặc lớp cùng lúc.