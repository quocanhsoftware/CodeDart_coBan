/*
-Dart là một ngôn ngữ lập trình hướng đối tượng, nơi mọi thứ đều là đối tượng
và các đối tượng này được tạp ra từ các lớp(class).

-Mỗi đối tượng trong dart có thể có các thuộc tính (biến) và phương thức (hàm).
Thuộc tính lưu trữ dữ liệu và phương thức thực hiện các hành động 

-1 file mà có nhiều class 
Sử dụng dấu (.) để tham chiếu đến một thuộc tính hoặc phương thức: 
*/

import 'dart:io';
import 'dart:math';
class Point{
  double x,y;
  Point(this.x, this.y);//Hàm constructor
  
  double disstance(Point other){
    var dx = x - other.x;
    var dy = y - other .y;
    return sqrt(dx*dx + dy*dy);
  }

}
//=========================
class Point2{
  double? x; //Thuộc tính instance, ban đầu là null
  double z = 0; //Thuộc tính instance, ban đầu là 0
}
double X_=1.5;

class Point3{
  double? x = X_;
  double? y ;
  late double? z = this.x;
  Point3(this.x, this.y, this.z);
}
// =======
/*
Phương thức getter, setter:
Trong Dart, getter và setter là các phương thức đặc biệt cung cấp truyền truy cấp 
đọc và ghi các thuộc tính của một đối tượng. Ta có thể ạo thêm các thuộc tính 
bằng cách triển khai getter và setter thông qua các từ khóa get và set
*/
class rectangle{
  double? left, top, width, height;
  late double _z;

  rectangle(this.left, this.top, this.width, this.height);
  double get z => _z; //Khi gọi z sẽ trả về _z
  set z(double value) => _z=value; //Gán _z =value khi gọi z 


  @override
  bool operator ==(Object other) {
    if(identical(this, other)) return true;
    if(other is! rectangle) return false;

    return left == other.left &&
    top == other.top &&
    width == other.width &&
    height == other.height;
  }
}

// ===============
/* Thuộc tính và phương thức static 
Trong dart, thuộc tính và phương thức tĩnh (static) được sử dụng để chia sẻ 
dữ liệu và chức năng giữa tất cả các đối tượng của một lớp. Điều này có nghĩa là ta không 
cần phải tạo ra 1 đối tượng để truy cập vào các thuộc hoặc phương thức này 
*/
class Mymath{
  static const PI=3.14159;

  static double sqr(double x){
    return x*x;
  }

}

void main() {
  Point p1 = Point(0, 0);
  var p2 = Point(3, 3);
  double d = p1.disstance(p2);
  print(d.toStringAsFixed(2));

  //===========
  Point2 p2_1 = Point2();
  print(p2_1.x);

  //getter và setter 
  var r = rectangle(null,null,null,null);
  r.z = 5;
  print(r.z);
  print(r.height);

  var r2 = rectangle(null,null,null,null);
  r.z = 5;
  print(r.z);
  print(r.height);
  print((r==r2));

  //===========
  print(Mymath.PI);
  print(Mymath.sqr(5));
}