void main(){
  Object name  = "Quoc Anh";
  //Kiểm tra có phải string ko
  print(name is String);
  //Kiểm tra không phải String 
  print(name is! String);
  //Ép kiểu 
  String str = name as String;
  print(str.toUpperCase());
}