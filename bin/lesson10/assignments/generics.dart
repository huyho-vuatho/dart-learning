// Định nghĩa lớp Box sử dụng Generic
void main() {
  // Tạo đối tượng Box cho kiểu int
  Box<int> intBox = Box<int>();
  intBox.setValue(10);
  print('Giá trị trong hộp là: ${intBox.getValue()}');
  print('Giá trị đó có phải là số chẵn không? ${intBox.isEven()}');

  // Tạo đối tượng Box cho kiểu String
  Box<String> stringBox = Box<String>();
  stringBox.setValue('Hello Dart');
  print('\nGiá trị trong hộp là: ${stringBox.getValue()}');
  print('Độ dài của chuỗi đó là: ${stringBox.stringLength()}');

  // Thử với một số lẻ
  intBox.setValue(7);
  print('\nGiá trị trong hộp là: ${intBox.getValue()}');
  print('Giá trị đó có phải là số chẵn không? ${intBox.isEven()}');

  // Thử với chuỗi rỗng
  stringBox.setValue('');
  print('\nGiá trị trong hộp là: "${stringBox.getValue()}"');
  print('Độ dài của chuỗi đó là: ${stringBox.stringLength()}');
}

class Box<T> {
  T? value;

  // Lấy giá trị hiện tại từ hộp
  T? getValue() {
    return value;
  }

  // Kiểm tra giá trị có phải là số chẵn không (nếu là số nguyên)
  bool isEven() {
    if (value is int) {
      return (value as int) % 2 == 0;
    }
    return false;
  }

  // Đặt giá trị mới vào hộp
  void setValue(T newValue) {
    value = newValue;
  }

  // Trả về độ dài của chuỗi (nếu là chuỗi)
  int stringLength() {
    if (value is String) {
      return (value as String).length;
    }
    return -1;
  }
}
