/*
Mixin là một lớp có chứa các phước thức và thuộc tính dùng để gộp vào
một lớp khác. Mixin không thể được sử dụng để tạo đối tượng trực tiếp.
Để sử dụng Mixin, sủ dụng từ khóa with. 
*/
mixin M{
  int? a;
  void Showsomething()
  {
    print("Print massage:...");
  }
}
class B{
  String name = "QuocAnh";
  void disInformation()
  {
    print("Information B: $name");
  }
}
class C extends B with M{
  @override
  void disInformation() {
    Showsomething();
    a=100;
    print(a);
  }
}
void main(){
  C c = C();
  c.disInformation();
  B b = B();
  b.disInformation();
}
