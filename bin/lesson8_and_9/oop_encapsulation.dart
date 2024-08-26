// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Đóng gói (Encapsulation)
// Bảo vệ dữ liệu bằng cách ẩn các thuộc tính và phương thức quan trọng
// và cung cấp các phương thức công khai để truy cập dữ liệu

// Điều này bảo vệ dữ liệu khỏi việc truy cập trái phép
// và giúp bạn kiểm soát tốt hơn cách dữ liệu được sử dụng trong chương trình.

// Trong Dart, tính đóng gói dc thể hiện qua các việc:
//? 1. Định nghĩa thuộc tính hoặc phương thức riêng tư (private):
//     bằng cách thêm dấu gạch dưới _ trước tên thuộc tính hoặc phương thức

//? 2. Định nghĩa phương thức get và set cho các thuộc tính private
//    get: phương thức dùng để truy cập có kiểm soát đến các thuộc tính riêng tư
//    set: gán giá trị mới có kiểm soát cho các thuộc tính riêng tư,
//         developer sẽ chỉ định thuộc tính nào sẽ dc gán giá trị mới

class BankAccount {
  final String _accountNumber;
  double _balance;
  bool _isShowingBalance;

  BankAccount(this._accountNumber, this._balance,
      [this._isShowingBalance = false]);

  // Getter cho số dư
  String get balance => _isShowingBalance ? _balance.toString() : "*********";

  // Getter cho số tài khoản
  String get bankNumber => _accountNumber;

  set deposit2(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  set isShowingBalance(bool newValue) => _isShowingBalance = newValue;

  set withdraw2(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    }
  }

  // Method để gửi tiền
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  // Method để rút tiền
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    }
  }
}

class Employee {
  final String _id;
  double _salary;

  Employee(this._id, this._salary);

  //! id
  // get: để lấy giá trị
  String get idEmployee => _id;
  // set: ko thể gán giá trị mới do đó ko có set

  // get
  double get salary => _salary;

  // set
  set salaryImporting(double amount) => _salary = _salary + amount;
}
