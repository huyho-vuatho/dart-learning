//! Tham trị (Pass by Value)
// Tham trị là cách truyền giá trị của biến vào hàm. 
// Điều này có nghĩa là hàm nhận một bản sao của giá trị đó  
// và mọi thay đổi trên bản sao này sẽ không ảnh hưởng đến giá trị gốc bên ngoài hàm.

//? Kiểu dữ liệu nguyên thủy như int, String, bool, v.v., là immutable (bất biến) 
//? ngoại trừ Object và Collections (List, Map, Set)

//? Do đó, Kiểu dữ liệu nguyên thủy được truyền theo tham trị (pass by value)
//? có nghĩa là khi bạn gán hoặc truyền một biến kiểu dữ liệu nguyên thủy, 
//? một bản sao của giá trị được tạo ra, và không có sự thay đổi nào trên giá trị gốc.

// void changeValue(int number) {
//   number = 10;
// }

// void main() {
//   int x = 5;
//   print('Before: $x'); // In ra: Before: 5

//   //? biến x được truyền vào hàm changeValue theo tham trị.
//   //? Hàm changeValue chỉ thay đổi bản sao của giá trị x, 
//   //? vì vậy giá trị gốc của x không thay đổi sau khi gọi hàm.
//   changeValue(x);
//   print('After: $x'); // In ra: After: 5
// }