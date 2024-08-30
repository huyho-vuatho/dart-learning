void main() {
  List<Student> students = [];

  // Thêm sinh viên
  addStudent(students, Student(id: 1, name: 'Alice', age: 20));
  addStudent(students, Student(id: 2, name: 'Bob', age: 22));

  // Hiển thị danh sách sinh viên
  print('Student List:');
  for (var student in students) {
    print(student);
  }

  // Cập nhật trạng thái sinh viên
  // Sử dụng copyWith để tạo bản sao và cập nhật tuổi sinh viên
  final studentToUpdate =
      students.firstWhere((s) => s.id == 1).copyWith(age: 40, name: 'Huy');
  updateStudent(students, studentToUpdate);

  // Tính tuổi trung bình
  double averageAge = calculateAverageAge(students);
  print('\nAverage Age: $averageAge');

  print('Student List:');
  for (var student in students) {
    print(student);
  }
}

void addStudent(List<Student> students, Student student) {
  students.add(student); // Pass by reference: Thêm sinh viên vào danh sách
}

double calculateAverageAge(List<Student> students) {
  int totalAge = 0;
  for (var student in students) {
    totalAge +=
        student.age; // Pass by value: Không thay đổi giá trị của student
  }
  return students.isNotEmpty ? totalAge / students.length : 0.0;
}

void updateStudent(List<Student> students, Student updatedStudent) {
  final indexOfUpdatedStudentInList =
      students.indexWhere((element) => element.id == updatedStudent.id);
  students[indexOfUpdatedStudentInList] = updatedStudent;
}

class Student {
  final int id;
  final String name;
  final int age;
  final StudyStatus status;

  Student({
    required this.id,
    required this.name,
    required this.age,
    this.status = StudyStatus.active,
  });

  Student copyWith({
    String? name,
    int? age,
    StudyStatus? status,
  }) {
    return Student(
      id: id,
      name: name ?? this.name,
      age: age ?? this.age,
      status: status ?? this.status,
    );
  }

  @override
  String toString() {
    return 'Student ID: $id, Name: $name, Age: $age, Status: $status';
  }
}

enum StudyStatus { active, graduated, droppedOut }
