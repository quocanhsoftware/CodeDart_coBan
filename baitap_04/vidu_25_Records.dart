/*
-Records là một kiểu dữ liệu tổng (composite type) được giới thiệu trong dart 3.0 
cho phép nhóm nhiều giá trị có kiểu khác nhau thành một đơn vị duy nhất. 
-Records là immutable - nghĩa là không thể thay đổi sau khi được tạo.
*/
void main(){
  var r = ('first', a:2, 5, 10.5); //Records

  //Định nghĩa record có hai giá trị
  var point = (100,200);

  //Định nghĩa record thông tin con người
  var person = (name:'Quoc Anh', age:18, 5);

  //Truy xuất
  //Dùng chỉ số
  print(point.$1); //100
  print(point.$2); //200
  print(person.$1);

  //Dùng tên 
  print(person.age);
  print(person.name);
}