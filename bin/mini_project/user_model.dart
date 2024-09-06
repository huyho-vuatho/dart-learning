class User {
  final String gender;
  final String firstName;
  final String lastName;
  final String email;
  final int age;

  User({
    required this.gender,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.age,
  });

  // Hàm convert từ JSON data sau khi đã decode thành Map
  // thành đối tượng User
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      gender: json['gender'] ?? '',
      firstName: json['name']['first'] ?? '',
      lastName: json['name']['last'] ?? '',
      email: json['email'] ?? '',
      age: json['dob']['age'] ?? 0,
    );
  }
}
