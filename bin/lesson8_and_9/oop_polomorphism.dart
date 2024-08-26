// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Tính đa hình
// Cho phép các đối tượng con thực thi các chức năng dc kế thừa từ lớp cha
// theo 1 cách khác, riêng biệt
// Điều này có nghĩa là lớp con có thể sử dụng một phương thức theo nhiều cách khác nhau

//? Cách hoạt động trong Dart:
// Trong các lớp con, Đa hình thường được thể hiện qua việc ghi đè (override) phương thức dc kế thừa từ lớp cha,
//    nơi mà mỗi lớp con có thể triển khai phương thức theo cách riêng của mình.

import 'dart:math';

void main(List<String> args) {
  final circle = Circle(radius: 50);
  print("Diện tích hình tròn là: ${circle.tinhDientich()}");
  final rectangle = RectangleShape(height: 100, width: 50);
  print("Diện tích hình chữ nhật: ${rectangle.tinhDientich()}");
  final sum = circle.tinhDientich() + rectangle.tinhDientich();
  print("Tổng diện tích các hình: $sum");
}

class Circle extends Shape {
  final double radius;
  Circle({
    required this.radius,
  });

  // Tính đa hình
  @override
  double tinhDientich() {
    return pi * radius * radius;
  }
}

class RectangleShape extends Shape {
  final double height;
  final double width;
  RectangleShape({
    required this.height,
    required this.width,
  });

  @override
  double tinhDientich() {
    return 2 * (height + width);
  }
}

// void main() {
//   Animal dog = Dog();
//   Animal cat = Cat();

//   dog.makeSound(); // In ra: Gâu gâu!
//   cat.makeSound(); // In ra: Mèo méo meo mèo meo!
// }

// class Animal {
//   void makeSound() {
//     print('Animal sound');
//   }
// }

// class Cat extends Animal {
//   @override
//   void makeSound() {
//     print('Mèo méo meo mèo meo =))))');
//   }
// }

// class Dog extends Animal {
//   @override
//   void makeSound() {
//     print('Gâu gâu!');
//   }
// }

//! Bài tập tính Đa hình (Polymorphism)
// Tạo một lớp cha Shape và các lớp con Circle và Rectangle. Sử dụng đa hình để tính diện tích của các hình.
// Yêu cầu:
//  - Lớp Shape có một phương thức area() trừu tượng.
//  - Lớp Circle và Rectangle kế thừa từ Shape và triển khai phương thức area().
//  - Viết một hàm để tính tổng diện tích của nhiều hình khác nhau (sử dụng danh sách các đối tượng Shape).

class Shape {
  double tinhDientich() {
    return 0;
  }
}
