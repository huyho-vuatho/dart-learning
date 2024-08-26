//! Encapsulation Demo
// import 'oop_encapsulation.dart';

// void main(List<String> args) {
//   // final huyBankAccount = BankAccount("666888999", 9000);
//   // print("Stk: ${huyBankAccount.bankNumber}");
//   // print("Số dư: ${huyBankAccount.balance}");

//   // huyBankAccount.isShowingBalance = true;
//   // print("Số dư: ${huyBankAccount.balance}");
//   // // deposit
//   // print("Nạp 1000");
//   // huyBankAccount.deposit(1000);
//   // print("Số dư: ${huyBankAccount.balance}");

//   // // deposit ver 2 sử dụng set
//   // print("Nạp 2000");
//   // huyBankAccount.deposit2 = 2000;
//   // print("Số dư: ${huyBankAccount.balance}");

//   // // withdraw
//   // print("Rút 500");
//   // huyBankAccount.withdraw(500);
//   // print("Số dư: ${huyBankAccount.balance}");

//   // // withdraw ver 2 sử dụng set
//   // print("Rút 200");
//   // huyBankAccount.withdraw2 = 200;
//   // print("Số dư: ${huyBankAccount.balance}");
//   final employee = Employee("abc1", 0);
//   print("id employee: ${employee.idEmployee}");
//   print("salary employee: ${employee.salary}");

//   employee.salaryImporting = 1234;
//   print("salary employee: ${employee.salary}");
// }

//! Inheritance Demo
import 'oop_inheritance.dart';

void main(List<String> args) {
  print("Tôi là cha");

  final father = Father();
  father.doBusiness();
  print(
      "Tài sản tôi có: ${father.numberOfCars} xe, ${father.numberOfHouses} nhà");

  print("\nTôi là con");
  final son = Son();
  son.doBusiness();
  print("Tài sản tôi có: ${son.numberOfCars} xe, ${son.numberOfHouses} nhà");
}
