// Dựa trên yêu cầu bài 1, bài 4 sẽ nâng cấp 1 số tính năng

// Yêu cầu:
// Tạo lớp trừu tượng Employee với các thuộc tính name, id, và phương thức calculateSalary().
// Tạo các lớp FullTimeEmployee và PartTimeEmployee kế thừa từ Employee.
// Tạo lớp EmployeeManager để quản lý danh sách các đối tượng Employee và cung cấp các phương thức CRUD.
// Create: Tạo 1 nhân viên mới và thêm vào danh sách nhân viên
// Read: Lấy thông tin của nhân viên dưa trên id
// Update: Chỉnh sửa thông tin của nhân viên dựa trên ID (Chỉ Id nhân viên là ko thay đổi dc giá trị) còn lại có thể thay đổi giá trị.
// Ở bài này ta chỉ cần chỉnh sửa thông tin name của nhân viên
// Delete: Xoá nhân viên ra khỏi danh sách dựa trên id
// Tạo phương thức để tính tổng lương của tất cả nhân viên trong EmployeeManager.
abstract class Employee {
  String _name;
  final int _id;

  Employee({required String name, required int id})
      : _name = name,
        _id = id;

  int get id => _id;

  String get name => _name;

  set name(String name) {
    if (name.isNotEmpty) {
      _name = name;
    } else {
      print('Name cannot be empty');
    }
  }

  double calculateSalary();
}
