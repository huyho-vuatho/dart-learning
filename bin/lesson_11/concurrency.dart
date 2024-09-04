//! Concurrency là gì?
/*
  Trong 1 chương trình Dart,
  Concurrency là khả năng thực hiện nhiều tác vụ đồng thời (concurrently)  
  cho phép chương trình xử lý nhiều công việc 
  mà không phải chờ đợi từng công việc hoàn thành trước khi bắt đầu công việc tiếp theo.
*/
/*
 Đây là một khái niệm quan trọng trong lập trình, 
 đặc biệt là khi làm việc với các tác vụ như I/O (đọc/ghi tệp, call api request) 
 hoặc các tác vụ tốn thời gian khác mà không muốn chặn giao diện người dùng 
 hoặc ngăn cản chương trình thực hiện các công việc khác.
*/

//! Event loop
// Event Loop trong Dart là cơ chế quản lý các tác vụ bất đồng bộ 
// và xử lý các sự kiện trong chương trình. 
//
// Event loop đảm bảo rằng các tác vụ bất đồng bộ 
// (chẳng hạn như đọc dữ liệu từ tệp, thực hiện yêu cầu HTTP, hoặc lắng nghe các sự kiện của người dùng) 
// được thực thi mà không làm gián đoạn luồng chính của chương trình.

//! Asynchronous
/* 
 Dart sử dụng lập trình bất đồng bộ (asynchronous programming) để quản lý concurrency. 
 Asynchronous là bất đồng bộ trong lập trình. 

 Trong thực tế một số tác vụ sẽ không trả về kết quả ngay lập tức, 
 mà phải đợi 1 thời gian (không xác định), 
 khi đó hệ thống sẽ làm những công việc khác cho đến kết quả kia được trả về thì nó quay lại xử lý tiếp. 

 Lập trình bất đồng bộ cho việc xử lý các tác vụ đồng thời mà không phải chờ kết quả

*/

//?  Hai khái niệm chính trong lập trình bất đồng bộ của Dart là Future và Stream.