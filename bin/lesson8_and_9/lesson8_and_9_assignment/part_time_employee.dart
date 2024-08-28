import 'employee_model.dart';

class PartTimeEmployee extends Employee {
  double _hourRate;
  int _workedHour;

  PartTimeEmployee(
      {required double hourRate,
      required int workedHour,
      required super.name,
      required super.id})
      : _hourRate = hourRate,
        _workedHour = workedHour;

  double get hourRate => _hourRate;

  set hourRate(double newValue) {
    _hourRate = newValue;
  }

  @override
  set name(String name) {
    //Chỉnh sửa logic nếu bạn có cách kiểm tra name khác dành cho FulltimeEmployee
    super.name = name;
  }

  int get workedHour => _workedHour;

  set workedHour(value) => _workedHour = value;

  @override
  double calculateSalary() {
    return _hourRate * _workedHour;
  }
}
