import 'dart:ffi';
import 'dart:io';

void main(){
  int x=100;

  if(x is! int ){
    print('Đây không phải là một con số');
  }
  else if(x%2==0){
    print('$x là số chẳn');
  }
  else{
    print('$x là số lẻ');
  }

  stdout.write("Nhập tên của bạn: ");
  String name = stdin.readLineSync()!;

  stdout.write("Nhập tháng: ");
  int thang = int.parse(stdin.readLineSync()!);
  switch (thang) {
    case 2:
    print('Tháng $thang có 28 ngày');
    break;
    case 1:
    case 3:
    case 5:
    case 7: 
    case 8: 
    case 10:
    case 12:
      print("Tháng $thang có 31 ngày ");
      break;

    case 4:
    case 6:
    case 9:
    case 11:  
    print("Tháng $thang có 30 ngày ");
    default:
    print("Tháng $thang khong xác định được");
  }
  print(name);
  }