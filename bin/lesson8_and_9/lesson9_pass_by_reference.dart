// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Tham chiếu (Pass by Reference)
// Khi bạn truyền một đối tượng vào hàm theo tham chiếu,
// mọi thay đổi đối với đối tượng bên trong hàm sẽ ảnh hưởng đến đối tượng gốc bên ngoài hàm.

// Nếu sử dụng phép gán = cho 2 object.
// Thì chúng sẽ có mối liên kết tham chiếu,
// có nghĩa là vectorA và vectorB là 2 object riêng biệt,
// nhưng chúng lại sử dụng chung 1 vùng nhớ trên máy tính

void main(List<String> args) {
  final vectorA = Vector(x: 2, y: 3);
  final vectorB = vectorA;
  print('Hash A: ${vectorA.hashCode}');
  print('Hash B: ${vectorA.hashCode}');
  print('Vector A = Vector B ko??? ${vectorA == vectorB}');

  print('x of vectorA: ${vectorA.x}');
  print('x of vectorB: ${vectorB.x}');
  vectorB.x = 5;
  print('---');
  print('x of vectorA: ${vectorA.x}');
  print('x of vectorB: ${vectorB.x}');

  final vectorC = vectorA.copyWith();
  print('x of vectorA: ${vectorA.x}');
  print('x of vectorC: ${vectorC.x}');
  vectorC.x = 6;
  print('---');
  print('x of vectorA: ${vectorA.x}');
  print('x of vectorC: ${vectorC.x}');
}

class Vector {
  double? x;
  double? y;

  Vector({
    this.x,
    this.y,
  });

  //! Tham trị và method copyWith
  // Developer thường viết thêm hàm copyWith để thực hiện việc sao chép toàn bộ giá trị của object
  // nhưng vẫn tránh dc việc tham chiếu cùng vùng nhớ
  Vector copyWith({
    double? x,
    double? y,
  }) {
    return Vector(
      x: x ?? this.x,
      y: y ?? this.y,
    );
  }
}
