import 'api_service.dart'; // Import ApiService từ api_service.dart
import 'user_model.dart'; // Import lớp User từ models.dart

void main() async {
  ApiService apiService = ApiService();
  print("Bắt đầu gọi API nà");
  // Gọi API để lấy thông tin user
  User? user = await apiService.fetchRandomUser();

  // Nếu lấy được user, in thông tin ra console
  if (user != null) {
    print("Data API trả về rùi nà");
    print('-------------------');
    print('Gender: ${user.gender}');
    print('Email: ${user.email}');
    print('First Name: ${user.firstName}');
    print('Last Name: ${user.lastName}');
    print('Age: ${user.age}');
  }
}
