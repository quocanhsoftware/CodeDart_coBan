import 'dart:io';

void main(){
  //Nhập tên người dùng
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;

  //Nhập tuổi người dùng 
  stdout.write("Enter your : ");
  int age =int.parse(stdin.readLineSync()!);

  print("Xin chào $name");
  print("Tuổi của bạn là $age");
}