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
