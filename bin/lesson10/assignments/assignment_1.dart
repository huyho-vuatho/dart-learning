// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:collection/collection.dart';
/*
Enum StudyStatus: Định nghĩa các trạng thái học tập của sinh viên gồm Active (Đang theo học), Graduated (tốt nghiệp), DroppedOut (nghỉ học).
*/
/*
Lớp Student:
Có thuộc tính: id, name, age, status (kiểu StudyStatus). 
Lưu ý: khai báo toàn bộ thuộc tính với keyword final.
Cung cấp phương thức copyWith để tạo một bản sao của sinh viên với các thuộc tính được thay đổi (chỉ có id là ko thể cập nhật giá trị).
*/

/*
addStudent(List<Student> students, Student student) để thêm sinh viên vào danh sách . (Pass by reference)
*/

//! (Pass by reference)
void main(List<String> args) {
  final List<Student> listStudents = [];
  addStudent(listStudents, Student(id: "1", name: "huy", age: 10));
  addStudent(listStudents, Student(id: "2", name: "Alice", age: 12));
  addStudent(listStudents, Student(id: "3", name: "John", age: 20));
  print(listStudents.toString());

  final requestToChangeStudent =
      listStudents.firstWhereOrNull((element) => element.id == "2");
  if (requestToChangeStudent != null) {
    final updatedStudent = requestToChangeStudent.copyWith(newName: "Sandra");
    print("Updated Student: $updatedStudent");
    print("Request to change Student: $requestToChangeStudent");
    updateStudent(listStudents, updatedStudent);
    print(listStudents.toString());
    // requestToChangeStudent.name = "Sandra";
    // print(listStudents.toString());
  }

  // print(
  //     "Tuổi trung bình của danh sách sinh viên: ${calculateAverageAge(listStudents)}");
}

void addStudent(List<Student> students, Student student) {
  final indexInList =
      students.indexWhere((studentElement) => studentElement.id == student.id);
  final isStudentNotExistInList = indexInList == -1;
  if (isStudentNotExistInList) {
    students.add(student);
  }
}

//! (Pass by value)
double calculateAverageAge(List<Student> students) {
  int totalAge = 0;
  for (var student in students) {
    totalAge = totalAge + student.age;
  }
  return totalAge / students.length;
}

//! (Pass by reference)
/*
Function cập nhật thông tin sinh viên, updateStudent student(List<Student>, Student updatedStudent).
Các bước thực hiện:
Lấy đối tượng Student mà bạn muốn chỉnh sửa từ Danh sách Student
Gọi hàm copyWith() của đối tượng bạn vừa lấy ra để thay đổi thuộc tính bạn muốn. 
  - Hàm copyWith sẽ trả về 1 instance mới do đó bạn cần chỉ định 1 biến lưu trữ, ví dụ: final updatedStudent = student1.copyWith(age: 23);
  - Truyền giá trị của updatedStudent vào hàm updateStudent student(List<Student> listStudent, Student updatedStudent) 
  - Trong body của hàm updateStudent(), update giá trị của item cần update trong list bằng index, (gợi ý lấy index bằng cách sử dụng hàm indexWhere() của List<Student> )
  - Sau khi có dc index của item cần update, thay đổi giá trị của item trong list bằng index, ví dụ: listStudent[index] = updatedStudent
*/

void updateStudent(List<Student> students, Student updatedStudent) {
  final indexInList = students
      .indexWhere((studentElement) => studentElement.id == updatedStudent.id);
  final isStudentExistInList = indexInList != -1;
  if (isStudentExistInList) {
    students[indexInList] = updatedStudent;
  }
}

class Student {
  final String id;

  final String name;
  final int age;
  final StudyStatus status;
  Student({
    required this.id,
    required this.name,
    required this.age,
    this.status = StudyStatus.active,
  });

  Student copyWith({String? newName, int? newAge, StudyStatus? newStatus}) {
    return Student(
        id: id,
        name: newName ?? name,
        age: newAge ?? age,
        status: newStatus ?? status);
  }

  @override
  String toString() {
    return "Student: (Id: $id, Name: $name, Age: $age, Status: $status) \n";
  }
}

// class Student {
//   final String _id;

//   String _name;
//   final int _age;
//   final StudyStatus _status;
//   Student({
//     required String id,
//     required String name,
//     required int age,
//     StudyStatus status = StudyStatus.active,
//   })  : _id = id,
//         _name = name,
//         _age = age,
//         _status = status;

//   int get age => _age;

//   String get id => _id;
//   String get name => _name;

//   set name(String name) => _name = name;

//   StudyStatus get status => _status;

//   @override
//   String toString() {
//     return "Student: (Id: $id, Name: $name, Age: $age, Status: $status) \n";
//   }
// }

enum StudyStatus { active, graduated, droppedOut }


//! Bất lợi khi sử dụng thuộc tính Private
//? 1. Khó kiểm soát instance mà bạn đã thay đổi

//? 2. Có bao nhiêu thuộc tính private có thể thay đổi giá trị
//? => tạo ra bấy nhiêu hàm set