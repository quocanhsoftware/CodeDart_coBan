import 'dart:ffi';

void main(){
  /* Định nghĩa:
  -Map là cấu trúc dữ liệu lưu trữ dạng Key-Value
  -Mỗi key là duy nhất
  -Value có thể trùng lặp
  -Key và value có thể là bất kì kiểu dữ liệu nào  
  */

  //Cách khai báo 

  //Cách 1: Khai báo trực tiếp 
  Map<String, dynamic> user1 = {
    'name':'Quoc Anh',
    'age':18,
    'isStudent': true,
    'Address': 'Hue'
  };
  //Cách 2: Sử dụng var
  var user2 = <String, dynamic>{
    'name':'Quoc Anh',
    'age':18
  };
  //Cách 3: Tạo map rỗng
  Map <String, dynamic> user3 = {};
  var user4 = <String,dynamic>{};

  //Các phương thức 
  // 1. Thêm và cập nhật
  user2['gmail'] = 'qanhhuecity@gmail.com'; // Key + value mới 
  user2['age'] = 19; // Thay đổi tuổi
  user2.putIfAbsent("Address", ()=>"Hue"); //Thêm thông tin bổ sung nếu user chưa có
  user2.addAll({
    'sdt': 0836729180,
    'namsinh':2006,
  });

  // 2. Xóa:
  user2.remove('gmail'); //Xóa theo key
  user2.removeWhere((key, value)=> value == null); // Xóa theo điều kiện nếu value rỗng 
  user2.clear(); //Xóa toàn bộ dữ liệu người dùng 

  // 3. Truy Cập 
  print(user1["age"]); //Lấy value theo key
  print(user1.length); //Kiểm tra số lượng key trong user1

  //Lấy value an toàn với giá trị mặc định 
  String gmail = user2['gmail'] ?? 'Gmail Chưa Có';

  // 4. Kiểm tra 
  print(user3.isEmpty);
  print(user2.isNotEmpty);
  print(user2.containsKey('gmail'));
  print(user1.containsValue('Hue'));

  // 5. Lấy danh sách 
  print(user1.keys); //Lấy ra tất cả các key
  print(user1.values); //Lấy ra tất cả các value 
  print(user1.entries); //Lấy ra tất cả các key+value 

  //6. Duyệt Map
  //Duyệt theo key và value (cách 1)
  user1.forEach((key, value){
    print('$key:$key');
  });
   
  //Duyệt qua entries (cách 2)
  for (var entry in user1.entries) {
    print('${entry.key}:${entry.value}');
  }

  // 7. Biến đổi 
  //Map key thành chữ hoa 
  var uppermap = user1.map((key, value) =>
    MapEntry(key.toUpperCase(), value)
  );

  //Lọc Map
  var filtered = user1.entries //Lấy ra các thành phần trong user1 
  .where((entry) => entry is String) // Điều kiện mỗi cặp value là String 
  .toList();//Đưa về list 

  //Ví dụ thực tế 
  // 1. Lưu thông tin sản phẩm trong giỏ hàng 
  Map<String, int> cart = {
    'SP1':2,
    'SP2':2,
    'SP3':2
  };
  // Thêm Sản Phẩm Vào Giỏ Hàng 
  void addtoCart(ProductID){
    cart.update(
      ProductID,
      (quantity) => quantity+1,
      ifAbsent: () => 1, //Nếu ProductID chưa có thì sẽ thêm vào với quanttity=1 
    );
  }
  // Cập nhật số lượng 
  void updateQuantity(String ProductID, int quantity) {
    if (cart.containsKey(ProductID)) {
      cart[ProductID] = quantity;
    }
  }

}