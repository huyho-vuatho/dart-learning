// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Tham chiếu (Pass by Reference)
// Tham chiếu là cách truyền đối tượng vào hàm hoặc phương thức
// bằng cách truyền địa chỉ (tham chiếu) của đối tượng đó.

// Do đó, khi bạn thay đổi giá trị của đối tượng trong hàm, thay đổi đó
// sẽ ảnh hưởng đến đối tượng gốc bên ngoài hàm.

// class Person {
//   String name;

//   Person(this.name);
// }

// //? đối tượng Person được truyền vào hàm changeName theo tham chiếu.
// void changeName(Person person) {
//   person.name = 'Alice';
// }

// void main() {
//   Person p = Person('Bob');
//   print('Before: ${p.name}'); // In ra: Before: Bob

//   //? Khi hàm changeName thay đổi thuộc tính name của đối tượng Person,
//   //? thay đổi đó ảnh hưởng trực tiếp đến đối tượng p bên ngoài hàm.
//   changeName(p);

//   print('After: ${p.name}'); // In ra: After: Alice
// }

// Nếu sử dụng phép gán = cho 2 object.
// Thì chúng sẽ có mối liên kết tham chiếu,
// có nghĩa là vectorA và vectorB là 2 object riêng biệt,
// nhưng chúng lại sử dụng chung 1 vùng nhớ trên máy tính

// void main(List<String> args) {
//   final vectorA = Vector(x: 2, y: 3);
//   final vectorB = vectorA;
//   print('Hash A: ${vectorA.hashCode}');
//   print('Hash B: ${vectorA.hashCode}');
//   print('Vector A = Vector B ko??? ${vectorA == vectorB}');

//   print('x of vectorA: ${vectorA.x}');
//   print('x of vectorB: ${vectorB.x}');
//   vectorB.x = 5;
//   print('---');
//   print('x of vectorA: ${vectorA.x}');
//   print('x of vectorB: ${vectorB.x}');

//   final vectorC = vectorA.copyWith();
//   print('x of vectorA: ${vectorA.x}');
//   print('x of vectorC: ${vectorC.x}');
//   vectorC.x = 6;
//   print('---');
//   print('x of vectorA: ${vectorA.x}');
//   print('x of vectorC: ${vectorC.x}');
// }

// class Vector {
//   double? x;
//   double? y;

//   Vector({
//     this.x,
//     this.y,
//   });

//   //! Tham trị và method copyWith
//   // Developer thường viết thêm hàm copyWith
//   // để thực hiện việc sao chép toàn bộ giá trị của object
//   // nhưng vẫn tránh dc việc tham chiếu cùng vùng nhớ
//   Vector copyWith({
//     double? x,
//     double? y,
//   }) {
//     return Vector(
//       x: x ?? this.x,
//       y: y ?? this.y,
//     );
//   }
// }
