void main(){
/* Định nghĩa:
-Set là tập hợp các phần tử không trùng lặp 
-Khong có thứ tự xác định 
-Mỗi phần tử chỉ xuất hiện 1 lần 
*/

//Cách khai báo 
Set<String> set1 = {'A','B','C','D'}; //Sử dụng trực 
var set2 = <int>{1,2,3,4,5,6};// Sử dụng var
Set<int> set3 = {}; //Set rỗng
var set4 = Set<int>.from([1,2,3,4,4,5,6]); //Chuyển một list sang set xóa các phần tử trùng lặp
print(set4);

//Các phương thức 
// 1. Thêm phần tử 
set1.add("E");
set1.addAll(["A", "B"]);

// 2. Xóa phần tử 
set1.remove('A'); // Xóa 1 phần tử
set1.removeAll(['B', 'C']); // Xóa nhiều phần tử 
set1.removeWhere((e)=>e=='D'); // Xóa phần tử theo điều kiện 
set1.clear(); //Xóa toàn bộ set

// 3. Truy vấn và kiểm tra 
print(set1.length);
print(set1.contains('A'));
print(set1.isEmpty);

// 4. Các phép toán tổng hợp
var set5 = {1,2,3};
var set6 = {3,4,5};

var union = set5.union(set6); //Hợp nhất set5 và set6
var intersection = set5.intersection(set6); // Giao 2 set với nhau
var difference = set5.difference(set6); // Kiểm tra phần tử nào set 5 có mà 6 ko có 
print(union);
print(intersection);
print(difference);

// 5. Biến đổi 
var list = set1.toList();
var newlist = Set.from(set1);

//Lọc và ánh xạ 
var filtered = set1.where((e)=>e.startsWith('A')); //Lấy ra những phần từ trong set1 từ A trở về sau 
var mapped = set1.map((e) => e.toLowerCase()); // Chuyển set về viết thường
print(filtered);
print(mapped);

//Duyệt từng phần tử 
set5.forEach((e){
  print(e);
});

//Ví dụ thực tế 
//Quản lý danh sách bạn bè 
Set<String> user = {'u1, u2, u3'};

//Thêm bạn 
user.add('u4');//OK
user.addAll(['u2, u3']);// Không thêm được vì đã tồn tại
print(user);

//Kiểm tra bạn bè 
bool isFriend = user.contains('u1');


//Đề xuất bạn bè 
Set<String> suggestion = {'u5', 'u6', 'u7'};
var newfriend = suggestion.difference(user); //Chỉ lấy những người bạn chưa kết bạn 
}


