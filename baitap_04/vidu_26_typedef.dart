/*
Typedefs là  cách ngắn gọn để tạo ra các alias (bí danh) cho các
loại dữ liệu.Điều này giúp cho mã nguồn trở nên rõ ràng và dễ đọc hơn, đặc biệt là khi
làm việc với các loại dữ liệu phức tạp.
*/
typedef ListInt = List<int>;
typedef ListMapper<X> = Map<X, List<X>>; 
void main(){
  ListInt list1= [1,2,3]; 
  print(list1);

  Map<String, List<String>> m1 = {}; //Khá dài 
  ListMapper<String> m2 = {}; //m1 và m2 cùng 1 kiểu 
}