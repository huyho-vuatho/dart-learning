// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Mixin
// Mixin là một khái niệm của Dart, thường là mixin class,
// dùng để cung cấp thêm chức năng cho một class có sẵn nào đó

//! Đặc điểm Mixin
//  1. Là một lớp đặc biệt được sử dụng để chia sẻ code với các lớp khác
//    Thay vì kế thừa từ một lớp cha, một lớp có thể sử dụng một mixin
//    để lấy các phương thức và thuộc tính được định nghĩa trong mixin đó.

//  2. Một mixin không thể được khởi tạo trực tiếp,
//     tức là bạn không thể tạo đối tượng từ một mixin.

//  3. Không cần phải là lớp trừu tượng:
//     Một mixin có thể chứa các phương thức và thuộc tính cụ thể
//     mà không cần phải là lớp trừu tượng.

//! Cách sử dụng Mixin
// Bạn có thể sử dụng một mixin trong một lớp khác bằng cách sử dụng từ khóa with.

//? Mixin CanRun và CanFly:
// Định nghĩa các phương thức run() và fly().
// Những phương thức này có thể được sử dụng trong các lớp khác
//? bằng cách sử dụng từ khóa with.
// mixin CanRun {
//   void run() {
//     print('Running');
//   }
// }

// mixin CanFly {
//   void fly() {
//     print('Flying');
//   }
// }

// //? Lớp Bird: Sử dụng mixin CanFly, do đó lớp này có thể truy cập phương thức fly().
// class Bird with CanFly {
//   void chirp() {
//     print('Chirping');
//   }
// }

// //? Lớp Human: Sử dụng mixin CanRun, do đó lớp này có thể truy cập phương thức run().
// class Human with CanRun {
//   void speak() {
//     print('Speaking');
//   }
// }

// //? Lớp SuperHero: Sử dụng cả hai mixin CanRun và CanFly,
// //? do đó lớp này có thể truy cập cả hai phương thức run() và fly().
// class SuperHero with CanRun, CanFly {
//   void saveTheDay() {
//     print('Saving the day!');
//   }
// }

// void main() {
//   Bird bird = Bird();
//   bird.chirp(); // In ra: Chirping
//   bird.fly();   // In ra: Flying

//   Human human = Human();
//   human.speak(); // In ra: Speaking
//   human.run();   // In ra: Running

//   SuperHero hero = SuperHero();
//   hero.saveTheDay(); // In ra: Saving the day!
//   hero.run();        // In ra: Running
//   hero.fly();        // In ra: Flying
// }

//! Khi nào nên sử dụng Mixin?
//?  1. Chia sẻ hành vi giữa các lớp không liên quan
//?  2. Tách biệt các chức năng chung
//?  3. Không phá vỡ quy tắc kế thừa đơn
//      Dart không hỗ trợ kế thừa đa dạng,
//      nhưng mixin cho phép bạn kết hợp nhiều chức năng
//      mà không cần phải phá vỡ quy tắc này.

//! Một số quy tắc và hạn chế
//? Mixin không thể có constructor:
//  Vì mixin không thể được khởi tạo trực tiếp, chúng không thể có constructor.
//? Mixin không thể có thuộc tính hoặc phương thức riêng tư
//  Vì mixin được "trộn" vào các lớp khác,
//  nó không thể có các thuộc tính hoặc phương thức riêng tư (private)
//  mà lớp khác không thể truy cập.

//! Thuộc tính trong Mixin
//  Bạn có thể định nghĩa các thuộc tính công khai trong mixin,
//  và các lớp sử dụng mixin sẽ có quyền truy cập và sử dụng chúng
//  như các thuộc tính của chính lớp đó
// mixin CanSwim {
//   double swimSpeed = 10.0; // Thuộc tính công khai

//   void swim() {
//     print('Swimming at speed $swimSpeed');
//   }
// }

// class Fish with CanSwim {
//   String species;


//   Fish(this.species);

//   void showDetails() {
//     print('Species: $species');
//     swim();
//   }
// }

// class Human with CanSwim {
//   String name;

//   Human(this.name);

//   void showDetails() {
//     print('Name: $name');
//     swim();
//   }
// }

// void main() {
//   Fish fish = Fish('Goldfish');
//   fish.showDetails(); // In ra: Species: Goldfish, Swimming at speed 10.0

//   Human human = Human('John');
//   human.showDetails(); // In ra: Name: John, Swimming at speed 10.0

//   // Thay đổi giá trị của thuộc tính swimSpeed
//   human.swimSpeed = 15.0;
//   human.swim(); // In ra: Swimming at speed 15.0
// }

//! Khi nào nên định nghĩa Thuộc tính trong Mixin
//? Chia sẻ trạng thái:
//  Nếu bạn cần chia sẻ một hoặc nhiều thuộc tính cụ thể
//  giữa nhiều lớp mà không cần tạo một hệ thống phân cấp phức tạp,
//  mixin là một cách hiệu quả để làm điều này.

//? Tính linh hoạt:
//  Các lớp có thể thay đổi hoặc ghi đè
//  giá trị của các thuộc tính được định nghĩa trong mixin
//  để phù hợp với nhu cầu của lớp đó.
