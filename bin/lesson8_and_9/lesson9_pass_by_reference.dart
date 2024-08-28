// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Tham chiếu (Pass by Reference)
// Tham chiếu là cách truyền đối tượng (Object) vào hàm hoặc phương thức
// bằng cách truyền địa chỉ (tham chiếu) của đối tượng đó.

// Do đó, khi bạn thay đổi giá trị của đối tượng trong hàm, thay đổi đó
// sẽ ảnh hưởng đến đối tượng gốc bên ngoài hàm.

// void main() {
//   Person p = Person('Bob');
//   print('Before: ${p.name}'); // In ra: Before: Bob

//   //? Khi hàm changeName thay đổi thuộc tính name của đối tượng Person,
//   //? thay đổi đó ảnh hưởng trực tiếp đến đối tượng p bên ngoài hàm.
//   changeName(p);

//   print('After: ${p.name}'); // In ra: After: Alice
// }

// // //? đối tượng Person được truyền vào hàm changeName theo tham chiếu.
// void changeName(Person person) {
//   person.name = 'Alice';
// }

// class Person {
//   String name;

//   Person(this.name);
// }

// Nếu sử dụng phép gán = cho 2 object.
// Thì chúng sẽ có mối liên kết tham chiếu,
// có nghĩa là vectorA và vectorB là 2 object riêng biệt,
// nhưng chúng lại sử dụng chung 1 vùng nhớ trên máy tính

// void main(List<String> args) {
//   final vectorA = Vector(x: 2, y: 3, vectorVer2: VectorVer2(z: 5));
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

//   print("thay đổi giá trị của VectorVer2 của Vector C thành 10");
//   vectorC.vectorVer2?.z = 15;

//   print('z of vectorVer2 của vectorC: ${vectorC.vectorVer2?.z}');
//   print('z of vectorVer2 của vectorA: ${vectorA.vectorVer2?.z}');
// }

// class Vector {
//   double? x;
//   double? y;
//   VectorVer2? vectorVer2;

//   Vector({this.x, this.y, this.vectorVer2});

//   //! Tham trị và method copyWith
//   // Developer thường viết thêm hàm copyWith
//   // để thực hiện việc sao chép toàn bộ giá trị của object
//   // nhưng vẫn tránh dc việc tham chiếu cùng vùng nhớ
//   Vector copyWith({double? x, double? y, VectorVer2? vectorVer2}) {
//     return Vector(
//         x: x ?? this.x,
//         y: y ?? this.y,
//         vectorVer2: vectorVer2 ?? this.vectorVer2?.copyWith());
//   }
// }

// class VectorVer2 {
//   double? z;
//   VectorVer2({
//     this.z,
//   });

//   VectorVer2 copyWith({double? z}) {
//     return VectorVer2(z: z ?? this.z);
//   }
// }
