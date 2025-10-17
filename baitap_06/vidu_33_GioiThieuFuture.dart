import 'dart:async';
/*
Future là gì?

Hãy tưởng tượng bạn gọi một món ăn tại một nhà hàng:
  +Bạn đặt món (gọi một hàm)
  +Nhân viên nói "Vâng, tôi sẽ mang món ăn đến sau" (nhận về một future)
  +Bạn có thể làm việc khác trong lúc chờ đợi (tiếp tục chạy code)
  Khi món ăn được phục vụ (món ăn được hoàn thành), bạn có thể thưởng thức nó (sử dụng kết quả)

  Future trong dart cũng hoạt động tương tự.
  Đó là cách làm việc với các tác vụ 
  mất thời gian mà không phải chờ đợi (ví dụ: tải dữ liệu từ internet, đọc tệp).

  Hiểu rõ về "async/await"
  async và await là hai từ khóa đặc biệt trong Dart giúp làm việc với Future dễ dàng hơn.

  Từ khóa async:
  -Khi thêm từ khóa async vào một hàm, 
  bạn đang nói với Dart: "Hàm này sẽ chứa code bất đồng bộ"

  -Một hàm được đánh dấu async thì sẽ luôn luôn trả 
  về một Future (ngay cả khi bạn không khai báo )
*/

Future<String> layTen() async{
  await Future.delayed(Duration(seconds: 2));
  return 'Quocanh';
}
void main() async{
  String ten = await layTen();
  print(ten);
}
/*
  Từ khóa await 
  -await chi có thể được sử dụng bên trong một hàm async 
  Khi bạn đặt await trước một Future, Dart sẽ: 
  -Tạm dừng thực thi hàm tại dòng đó 
  -Đợi Future hoàn thành 
  -Trả về giá trị từ Future (không còn đóng gói trong Future nữa)
  -Tiếp tục thực thi những dòng code còn lại
*/


