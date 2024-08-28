import 'employee_model.dart';
import 'full_time_employee.dart';
import 'part_time_employee.dart';

void main() {
  EmployeeManager manager = EmployeeManager();

  manager
      .addEmployee(FulltimeEmployee(montlySalary: 1000, name: "Alice", id: 1));
  manager.addEmployee(
      PartTimeEmployee(hourRate: 200, workedHour: 123, name: "James", id: 2));

  print('Tất cả nhân viên:');
  manager.listEmployees();

  print('\nTổng lương: ${manager.totalSalaries()}\n');

  print('Chỉnh sửa tên của nhân viên James => Huy....');
  manager.changeTheEmployeeName(2, "Huy");
  print("Updated...");

  print('Tất cả nhân viên:');
  manager.listEmployees();

  manager.removeEmployee(1);
  print('\nSau khi xóa nhân viên với ID 1:');
  manager.listEmployees();
}

class EmployeeManager {
  List<Employee> employees = [];

  void addEmployee(Employee employee) {
    employees.add(employee);
  }

  void changeTheEmployeeName(int id, String newName) {
    final employee = getEmployee(id);
    if (employee != null) {
      employee.name = "huy";
    }
  }

  Employee? getEmployee(int id) {
    for (var employee in employees) {
      if (employee.id == id) {
        return employee;
      }
    }
    return null;
  }

  void listEmployees() {
    for (var employee in employees) {
      print(
          'ID: ${employee.id}, Name: ${employee.name}, Salary: ${employee.calculateSalary()}');
    }
  }

  void removeEmployee(int id) {
    employees.removeWhere((employee) => employee.id == id);
  }

  double totalSalaries() {
    double total = 0;
    for (var employee in employees) {
      total += employee.calculateSalary();
    }
    return total;
  }
}
