// Trong ví dụ này, thuộc tính _balance là riêng tư và chỉ có thể truy cập gián tiếp thông qua các phương thức công khai như deposit() hoặc withdraw().
// Điều này đảm bảo rằng chỉ có những cách thức được định nghĩa trước mới có thể thay đổi giá trị của _balance.

import 'oop_in_dart.dart';

void main(List<String> args) {
  final employee = Employee("Hoàng", 22);
  employee.work();
  final developer = Developer("Huy", 26);
  developer.work();
  final manager = Manager("Alice", 27);
  manager.work();
}
