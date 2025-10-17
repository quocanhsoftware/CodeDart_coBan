import 'dart:io';

void main(){
  //số nguyên
  int x = 10;
  //số thực 
  double y=100;

  //num có thể chứa só nguyên và số thực 
  num z=10;
  num t=10.7;
  //Chuyển chuỗi sang số nguyên 
  var one = int.parse('1');
  print(one==1?'TRUE' : 'FALSE');

  //Chuyển chuỗi sang số thực 
  var onepointone = double.parse('1.1');
  print(onepointone);
  
  //Chuyển số nguyên sang chuỗi 
  String oneAsString = 1.toString();
  print(oneAsString);

  //Chuyển số thực thành chuỗi 
  String piAsString = 3.14159.toStringAsFixed(2);
  print(piAsString);
  
}