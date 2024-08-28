import 'employee_model.dart';

class FulltimeEmployee extends Employee {
  double _monthlySalary;
  FulltimeEmployee(
      {required double montlySalary, required super.name, required super.id})
      : _monthlySalary = montlySalary;

  double get monthlySalary => _monthlySalary;

  set monthlySalary(double newValue) {
    if (newValue == 0) {
      print("Salary cannot equal zero");
      return;
    } else {
      _monthlySalary = newValue;
    }
  }

  @override
  set name(String name) {
    //Chỉnh sửa logic nếu bạn có cách kiểm tra name khác dành cho FulltimeEmployee
    super.name = name;
  }

  @override
  double calculateSalary() {
    return _monthlySalary;
  }
}
