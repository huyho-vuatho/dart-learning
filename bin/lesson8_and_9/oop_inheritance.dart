//? Kế thừa (Inheritance)
// Kế thừa cho phép một lớp mới kế thừa các thuộc tính và phương thức của một lớp hiện có.
// Lớp mới (lớp con - subclass), Lớp dc kế thừa (lớp cha - superclass)
// Điều này giúp tái sử dụng mã và mở rộng chức năng.

//? Cách hoạt động:
// - Sử dụng từ khóa extends để định nghĩa một lớp con kế thừa từ lớp cha.
// - Lớp con kế thừa tất cả các thuộc tính và phương thức từ lớp cha mà ko cần khai báo lại,
//   và có thể ghi đè (override) các phương thức để thay đổi hành vi mà dc lớp con dc kế thừa.

class Father {
  int _numberOfCars;
  int _numberOfHouses;

  Father([this._numberOfCars = 4, this._numberOfHouses = 2]);

  set decreaseCarQuantity(int newQuantity) =>
      _numberOfCars = _numberOfCars - newQuantity;

  set decreaseHouseQuantity(int newQuantity) =>
      _numberOfHouses = _numberOfHouses - newQuantity;
  set increaseCarQuantity(int newQuantity) =>
      _numberOfCars = _numberOfCars + newQuantity;

  set increaseHouseQuantity(int newQuantity) =>
      _numberOfHouses = _numberOfHouses + newQuantity;
  get numberOfCars => _numberOfCars;

  get numberOfHouses => _numberOfHouses;

  void doBusiness() {
    print("Tôi kinh doanh quán ăn");
  }
}

class Son extends Father {
  @override
  void doBusiness() {
    print("Tôi kinh doanh quán chè");
  }
}
