/*
Chuỗi là tập hợp kí tự UTF-16
*/
void main(){
  var s1 = "Quoc Anh";
  var s2 = "18 tuoi";
  int diemtoan= 8;
  int diemly=9;

  //Chèn giá trị vào 1 biểu thức, biến vào chuỗi: ${...}
  var s3 = "Xin chào $s1, bạn $s2, điểm tb của bạn là ${diemtoan+diemly}";
  print(s3);

  //Tạo ra chuỗi nằm ở nhiều dòng 
  var s4= '''
  Dòng 1 
  Dòng 2 
  Dòng 3 
    ''';
    print(s4);
  var s5= 'Đây là một đoạn \nVăn Bản! ';
  print(s5);
  var s6= r'Đây là một đoạn \nVăn Bản! ';//raw
  print(s6);
}