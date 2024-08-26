//! Đối tượng là gì?
// Hiểu đơn giản đối tượng là 1 thực thể, sinh vật, đồ vật, ...
// sở hữu những tính chất và có thể có hành động khác nhau

// ví dụ: Car, People, Employee, Student, Animal
// Trong một đối tượng sẽ có các attribute (field, properties) và các method,
// có thể hiểu attribute các thuộc tính, tính chất
// và method là các phương thức, chức năng mà đối tượng đó có thể làm.

//! 3. Class
// Lớp là một bản thiết kế cho đối tượng.
// Class định nghĩa các thuộc tính (attribute) và phương thức (method)
// mà đối tượng sẽ có.

class Person {
  //! 4. Properties
  // Là các biến bạn khai báo trong class
  // để định nghĩa các thuộc tính (tính chất, đặc điểm) mà class đó có
  final String name;
  final int age;
  final double height;
  final String nationality;

  //! 5. Constructor
  // Constructor là một hàm đặc biệt được gọi khi một đối tượng mới của lớp được tạo ra.
  // Bạn có thể sử dụng constructor để khởi tạo giá trị cho các thuộc tính của đối tượng.
  // Constructor mặc định trong Dart là một hàm có tên trùng với tên của lớp
  Person(this.name, this.age, this.height, this.nationality);

  //! 6. Method
  // Method là một hàm (function) được định nghĩa bên trong class
  // và hoạt động trên các đối tượng của class đó

  // Method trong Dart tương tự như các hàm bình thường,
  // nhưng chúng có thể truy cập và thao tác với các thuộc tính (properties) của đối tượng mà chúng thuộc về.
  void sayHello() {
    print('Hello, my name is $name and I am $age years old.');
  }

  void snore() {
    print("zzz.zzzzz....zzzzz...zzz");
  }
}

//! 7. Đối tượng
// Đối tượng là một thể hiện cụ thể của một lớp
// Bạn có thể tạo nhiều đối tượng từ cùng một lớp,
// và mỗi đối tượng có thể có các giá trị thuộc tính riêng biệt.
// void main(List<String> args) {
//   // Object là 1 phiên bản hiện hữu của class, có thể gọi là instance
//   // Khởi tạo đối tượng chính là tạo ra 1 đối tượng mới bằng cách gọi hàm khởi tạo () của Class đó
//   var alice = Person('alice', 30, 170, "USA");
//   var huy = Person('Huy', 26, 175, "Vietnam");
//   alice.sayHello(); // In ra: Hello, my name is Alice and I am 30 years old.
//   huy.sayHello();
// }

//! 8. Bài tập
//? Bài tập 1: Quản lý thông tin nhân viên
// Yêu cầu:
//?  - Tạo một lớp Employee với các thuộc tính: name, age, và position.
//?  - Tạo một constructor để khởi tạo các thuộc tính.
//?  - Tạo một phương thức displayInfo() để in thông tin nhân viên.

// class Employee {
//   String name;
//   int age;
//   String position;

//   Employee(this.name, this.age, this.position);

//   void displayInfo() {
//     print("Nhân viên $name, $age tuổi, làm vị trí $position");
//   }
// }

// void main(List<String> args) {
//   final employee1 = Employee("Huy", 26, "Flutter developer");
//   employee1.displayInfo();
//   final employee2 = Employee("Việt", 25, "Mobile developer");
//   employee2.displayInfo();
// }