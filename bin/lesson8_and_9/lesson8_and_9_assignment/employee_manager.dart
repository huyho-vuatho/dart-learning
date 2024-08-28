import 'employee_model.dart';
import 'full_time_employee.dart';
import 'part_time_employee.dart';

void main() {
  EmployeeManager manager = EmployeeManager();

  print("Danh sách nhân viên ${manager.danhsachNhanvien}");

  manager.addSingleEmployee(
      FulltimeEmployee(montlySalary: 1000, name: "Alice", id: 1));

  manager.addSingleEmployee(
      PartTimeEmployee(hourRate: 200, workedHour: 123, name: "James", id: 2));

  print(
      "Danh sách nhân viên sau khi đã add 2 nhân viên ${manager.danhsachNhanvien}");

  manager.themNhieuNhanVienCung1Luc([
    FulltimeEmployee(montlySalary: 1000, name: "Alice", id: 3),
    FulltimeEmployee(montlySalary: 1000, name: "Alice", id: 4),
    FulltimeEmployee(montlySalary: 1000, name: "Alice", id: 5)
  ]);

  print(
      "Danh sách nhân viên sau khi đã add 3 nhân viên cùng 1 lúc ${manager.danhsachNhanvien}");

  // print('Tất cả nhân viên:');
  // manager.listEmployees();

  // print('\nTổng lương: ${manager.totalSalaries()}\n');

  // print('Chỉnh sửa tên của nhân viên James => Huy....');
  // manager.changeTheEmployeeName(2, "Huy");
  // print("Updated...");

  // print('Tất cả nhân viên:');
  // manager.listEmployees();

  // manager.removeEmployee(1);
  // print('\nSau khi xóa nhân viên với ID 1:');
  // manager.listEmployees();
}

class EmployeeManager {
  List<Employee> danhsachNhanvien = [];
  // 1. Create
  void addSingleEmployee(Employee employee) {
    danhsachNhanvien.add(employee);
  }

  // Read
  Employee? getEmployee(int id) {
    // return danhsachNhanvien.firstWhereOrNull((element) => element.id == id);
    for (var nhanvien in danhsachNhanvien) {
      if (nhanvien.id == id) {
        return nhanvien;
      }
    }
    return null;
  }

  void themNhieuNhanVienCung1Luc(List<Employee> listEmployee) {
    danhsachNhanvien.addAll(listEmployee);
  }
}



// class EmployeeManager {
//   List<Employee> employees = [];

//   // 1. Create
//   void addEmployee(Employee employee) {
//     employees.add(employee);
//   }

//   // Update
//   void changeTheEmployeeName(int id, String newName) {
//     final employee = getEmployee(id);
//     if (employee != null) {
//       employee.name = "huy";
//     }
//   }

//   // Read
//   Employee? getEmployee(int id) {
//     return employees.firstWhereOrNull((element) => element.id == id);
//     // for (var employee in employees) {
//     //   if (employee.id == id) {
//     //     return employee;
//     //   }
//     // }
//     // return null;
//   }

//   void listEmployees() {
//     for (var employee in employees) {
//       print(
//           'ID: ${employee.id}, Name: ${employee.name}, Salary: ${employee.calculateSalary()}');
//     }
//   }

//   // Delete
//   void removeEmployee(int id) {
//     employees.removeWhere((employee) => employee.id == id);
//   }

//   double totalSalaries() {
//     double total = 0;
//     for (var employee in employees) {
//       total += employee.calculateSalary();
//     }
//     return total;
//   }
// }
