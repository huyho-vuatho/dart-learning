class Product {
  final int _id;
  String _name;
  double _price;
  Product(this._id, this._name, this._price);

  // _id
  int get id => _id;

  // _name
  String get name => _name;
  set name(String newValue) => _name = newValue;

  // _price
  double get price => _price;
  set price(double newValue) => _price = price;
}
