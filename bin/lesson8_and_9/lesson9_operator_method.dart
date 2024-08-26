// class Vector {
//   final double? x;
//   final double? y;
//   Vector({
//     this.x,
//     this.y,
//   });
// }

// void main(List<String> args) {
//   final vectorA = Vector(x: 2, y: 3);
//   final vectorB = Vector(x: 2, y: 3);
//   print("Vector A = Vector B ?: ${vectorA == vectorB}");
// }

//? Tại sao 2 vector A và vector B bằng nhau về mặc toán học nhưng phép so sánh == lại trả về kết quả false?

//? Do Dart nó đâu có hiểu Vector là gì, và chúng ta quy ước == trong Vector là ra sao.

// Đó chính là khi ta cần định nghĩa operator method cho Đối Tượng
// để Dart có thể biết nguyên tắc để thực thi các toán tử cho Đối Tượng ta chỉ định

//! 1. Operator Method
// Operator Method trong Dart là một cách
// để bạn có thể gọi và ghi đè (override) các toán tử mặc định:
// +, -, *, /, ==,
// để sử dụng với các đối tượng của lớp do bạn định nghĩa

//! 2. Cách định nghĩa một Operator Method
// Bạn sử dụng từ khóa operator theo sau là toán tử mà bạn muốn ghi đè.

// Phương thức operator thường nhận tham số là một đối tượng khác
// (tương ứng với toán hạng bên phải của toán tử) và trả về một kết quả.

//! 3. Các toán tử có thể ghi đè
// Dart cho phép ghi đè các toán tử phổ biến như:
//? Toán tử số học: +, -, *, /, %, ~/
//? Toán tử quan hệ: ==, !=, <, >, <=, >=

//! 4. Ví dụ về Operator Method
// Giả sử bạn có một lớp Point đại diện cho một điểm trong không gian hai chiều với tọa độ x và y.
// Bạn muốn thực hiện phép cộng hai điểm với nhau.

class Point {
  double x;
  double y;

  Point(this.x, this.y);

  // override hashCode cho toán tử ==
  // Nếu hai đối tượng được coi là bằng nhau (theo ==), chúng phải có cùng hashCode
  @override
  int get hashCode => Object.hash(x, y);

  //? Bạn sử dụng từ khóa operator theo sau là toán tử mà bạn muốn ghi đè.

  // Định nghĩa operator method cho toán tử cộng (+)
  Point operator +(Point other) {
    // Kết quả là một đối tượng Point mới có tọa độ là tổng của hai điểm ban đầu.
    return Point(x + other.x, y + other.y);
  }

  // Định nghĩa operator method cho toán tử trừ (-)
  Point operator -(Point other) {
    // Kết quả là một đối tượng Point mới có tọa độ là hiệu của hai điểm ban đầu.
    return Point(x - other.x, y - other.y);
  }

  // Định nghĩa operator method cho toán tử so sánh hai đối tượn (==)
  @override
  bool operator ==(Object other) {
    // Bạn cần phải kiểm tra xem đối tượng được truyền vào có thuộc kiểu Point hay không,
    // sau đó so sánh từng thuộc tính của hai điểm.
    if (other is! Point) return false;
    return x == other.x && y == other.y;
  }

  @override
  String toString() => 'Point($x, $y)';
}

// void main() {
//   Point p1 = Point(2, 3);
//   Point p2 = Point(4, 5);

//   Point p3 = p1 + p2;  // Sử dụng toán tử + giữa hai đối tượng Point
//   print(p3);  // In ra: Point(6.0, 8.0)

//   Point p4 = p1 - p2;  // Sử dụng toán tử - giữa hai đối tượng Point
//   print(p4);  // In ra: Point(-2.0, -2.0)

//   print(p1 == Point(2, 3));  // So sánh hai đối tượng Point, in ra: true
// }
