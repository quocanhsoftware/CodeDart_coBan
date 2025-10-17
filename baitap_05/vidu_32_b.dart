//Định nghia một mixin để xử lí validatetion(xác nhận) dữ liệu
import 'dart:async';

mixin ValiDatetion{
  bool isEmailValid(String email){
    final emailValid = 
    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailValid.hasMatch(email);
  }

  bool isPasswordValid(String password) {
  // kiểm tra mật khẩu có ít nhất 8 ký tự, chứa chữ hoa, chữ thường và số
  final passwordRegExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  return passwordRegExp.hasMatch(password);
}
  bool isPhoneNumberValid(String phoneNumber) {
  final phoneRegExp = RegExp(r'^(?:[+0]9)?[0-9]{10}$');
  return phoneRegExp.hasMatch(phoneNumber);
}
}

// Định nghĩa mixin để xử lý lưu trữ
mixin Storagemixin {
  Future<void> saveData(String key, dynamic value) async {
    print("Đã lưu dữ liệu: key = '$key', value = '$value'");
  }

  Future<dynamic> getData(String key) async {
    print("Đang lấy dữ liệu với key = '$key'");
    return null;
  }

  Future<void> removeData(String key) async {
    print("Đã xoá dữ liệu với key = '$key'");
  }
}


//Lớp cơ sở cho lớp màn hình Đăng nhập/Đăng kí
class AuthScreen{
  void showLoading(){
    print('Hiển thị Loading...');
  }
  void hideLoading(){
    print("Ẩn Loading...");
  }
  void navigateToHome(){
    print("Chuyển đến trang chủ");
  }
}
//Lớp màn hình đăng nhập kế thừa AuthScreen và sử dụng cả hai mixin
class LoginScreen extends AuthScreen with Storagemixin, ValiDatetion{
  String email = "";
  String password = "";

//Hàm giả lập đăng nhập
  void login(){
    if(!isEmailValid(email)){
      print("Email không hợp lệ");
      return;
    }
    else if(!isPasswordValid(password)){
      print("Password không hợp lệ");
      return;
    }
  showLoading();

  //Giả lập đăng nhập thành công 
  print("Đăng nhập thành công với email $email");

  //Lưu trạng thái đăng nhập 
  saveData('user_email', email);

  hideLoading();
  navigateToHome();
  }

}
  //Màn hình đăng kí cũng sử dụng mixin tương tự 
  class signUpScreen extends AuthScreen with Storagemixin, ValiDatetion{
    String email = "";
    String password = "";
    String phoneNumber = "";
  void signUp(){
    if(!isEmailValid(email)){
      print("Email không hợp lệ");
      return;
    }
    if(!isPasswordValid(password)){
      print("Password không hợp lệ");
      return;
    }
    if(!isPhoneNumberValid(phoneNumber)){
      print("Phone number không hợp lệ");
      return;
    }
    showLoading();

    //Giả lập đăng kí thành công
    print("Đăng ký thành công với email $email và số điện thoại $phoneNumber");

    //Lưu thông tin người dùng 
    saveData('user_email', email );
    saveData('Phone_number', phoneNumber);
    hideLoading();
    navigateToHome();
  }
  }

  void main(){
  LoginScreen login = LoginScreen();
  login.email = "qanhuecity@gmail.com";
  login.password = "Anh123456@";

  print('Thực hiện đăng nhập');
  login.login();

  print("------------------");

  signUpScreen signup = signUpScreen();
  signup.email = "qanhuecity@gmail.com";
  signup.password = "Anh123456@";
  signup.phoneNumber = "0836729180";

  print('Thực hiện đăng nhập');
  signup.signUp();
  return;
  }