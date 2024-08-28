// ignore_for_file: public_member_api_docs, sort_constructors_first
// Tạo lớp Product với các thuộc tính id, name, và price.
//  Sử dụng private để bảo vệ thuộc tính và cung cấp các phương thức getter/setter.

// Tạo lớp PerishableProduct (đồ dễ hỏng) kế thừa từ Product,
//bổ sung thêm thuộc tính expiryDate (hạn sử dụng) với data type là Datetime.

// Viết một phương thức để hiển thị thông tin sản phẩm,
//bao gồm việc kiểm tra hạn sử dụng nếu sản phẩm là PerishableProduct.
//Nếu sản phẩm hết hạn thì thông báo là sản phẩm đã hết hạn (Gợi ý: So sánh Datetime của sản phẩm với thời gian hiện tại Datetime.now())

import 'product.dart';

void main(List<String> args) {
  final pateProduct =
      PerishableProduct(DateTime(2024, 8, 29), 1, "Pate", 12000);
  pateProduct.displayInfo();
  final banhMi = PerishableProduct(DateTime(2024, 8, 27), 1, "Bánh mì", 2000);
  banhMi.displayInfo();
}

class PerishableProduct extends Product {
  final DateTime _expiryDate;

  PerishableProduct(this._expiryDate, super._id, super._name, super._price);

  DateTime get expiryDate => _expiryDate;

  void displayInfo() {
    final isNotExpired = DateTime.now().isBefore(expiryDate);
    if (isNotExpired) {
      print("Thông tin sản phẩm");
      print("id: $id, name: $name, price: $price, expiry date: $expiryDate");
    } else {
      print("Sản phẩm $name đã hết hạn");
    }
  }
}
