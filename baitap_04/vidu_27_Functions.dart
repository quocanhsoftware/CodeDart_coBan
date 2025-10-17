/*
  -Dart là 1 ngôn ngữ thuần hướng đối tượng vì vậy ngay cả 
  các hàm cũng là đối tượng và có kiểu Function.
  -Điều này có nghĩa là các hàm có thể được gán cho các biến hoặc truyền làm tham số cho các hàm khác.
  -Ta cũng có thể gọi một biến thể hiện (Instance) của một lớp dart như thể nó là 1 hàm.
*/

/*
  -Hàm là một khối lệnh để thuqjc hiện một tác vụ gì đó, khối lệnh này được dùng nhiều 
  lần nên gom chúng lại thành 1 hàm.
*/

// 1. Viết đầy đủ 
  int Tong(int a, int b, int c){
    return a+b+c;
  }
// 2. Sử dụng cú pháp rút gọn "=>"
  int Tong1(int a, int b, int c) => a+b+c;
  // => expression là cách viết gọn của {return expression;}
/*
  Lưu ý: chỉ có biểu thức (expression) đứng sau =>, không áp dụng cho 
  câu lệnh (statement)
  Ví dụ: Ta không thể sử dụng statement if đằng => được, Tuy nhiên ta có thể sử dụng 
  toán tử 3 ngôi: condition ? expr1 : expr2
*/


// 3. Hàm với tên của tham số 
//Khi gọi 1 hàm function, ta có truyền giá trị thông qua tên biến paramName: value.
  String createfullName({String ho="", String chulot="", String ten=""}){
    return ho+" "+chulot+" "+ten+" ";
  }
  double Tong3({double a=0, double b=0, double c=0}) =>a+b+c;

// 4. Tham số tùy chọn(Có hay không cũng được)
/*
  -Các tham số tùy chọn trong hàm cho phép ta gọi các hàm mà không cần cung cấp 
  đầy đủ tất cả các tham số.Khi các tham số tùy chọn không được cung cấp, chúng sẽ nhận 
  giá trị null theo mặc định.
  -Để khai báo tham số ùy chọn, ta sử dụng ngoặc vuông [].
*/
double sum(double a, [double? b, double? c, double? d]){
  var result = a;
  result += (b!=null)?b:0;
  result += (c!=null)?c:0;
  result += (d!=null)?d:0;
  return result;
}

// 5. Hàm ẩn danh 
/*
  -Trong Dart, ta có thể gọi các hàm không có tên gọi là các hàm ẩn danh hay còn gọi là 
  lambda hoặc closure.
  -Chúng thường được sử dụng trong các ngữ cảnh mà ta không cần sử dụng tên hàm, 
  ví dụ như khi truyền hàm như tham số cho hàm khác.
  -Để tạo hàm ẩn danh, ta có thể sử dụng cú pháp tương tự như
   khi khai báo hàm có tên, nhưng bỏ qua phần kiểu trả về và tên hàm.
*/
// (var a, var b){
//   return a+b;
// }



//Hàm main() : Khởi đầu ứng dụng 
void main(){
  print("Hello");

  var x = Tong(10,29,39);
  List<int> list1 = [10, 100, 200];
  var y = Tong1(list1[0], list1[1], list1[2] );
  print(x);
  print(y);
  var fn = createfullName(ho: "Le", chulot: "Van",ten: "Quoc Anh");
  print(fn);
  var z = Tong3(a:1, c:2, b:3);
  print(z);

  print(sum(10));
  print(sum(10, 1));
  print(sum(10, 1, 2));
  print(sum(10, 1, 2, 3));

 var hamandanh = (a, b){
  return a+b;
 };

  print(hamandanh(1,2));
}