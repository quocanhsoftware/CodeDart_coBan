
/*
ax^2 + bx + c =0
*/
import 'dart:math';
import 'dart:io';
void main(){
  double a=0,b=0,c=0;
do {
  stdout.write("Nhập hệ số a (khác 0):");
  String? input = stdin.readLineSync();
  if(input!=null){
    a = double.tryParse(input) ?? 0; // có bắt lỗi. Nếu a=0 nó sẽ lặp lại 
  }
} while (a==0);
//Nhập b 
 stdout.write("Nhập hệ số b (khác 0):");
  String? inputb = stdin.readLineSync();
  if(inputb!=null){
    b = double.tryParse(inputb) ?? 0; // có bắt lỗi. Nếu a=0 nó sẽ lặp lại 
  }
//Nhập c
   stdout.write("Nhập hệ số c (khác 0):");
  String? inputc = stdin.readLineSync();
  if(inputc!=null){
    c = double.tryParse(inputc) ?? 0; // có bắt lỗi. Nếu a=0 nó sẽ lặp lại 
  }

  //Tính delta
  double delta=b*b-4*a*c;

  //Hiển thị phương trình
  stdout.write("Phương trình: ${a}x^2 + ${b}x + ${c} = 0\n");

  //Giải phương trình
  if (delta<0) {
    stdout.write("Phương trình vô nghiệm");
  }
  else if(delta==0){
    double x = -b/(2*a);
    stdout.write("Phương trình có nghiệm kép x1=x2=${x}");
  }
  else{
     double x1= (-b-sqrt(delta))/(2*a);
     double x2= (-b+sqrt(delta))/(2*a);
     stdout.write("Phương trình có hai nghiệm phân biệt: x1=${x1} và x2=${x2}");
  }
  return;
}