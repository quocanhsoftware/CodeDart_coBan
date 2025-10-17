void main(){
  /* Định nghĩa:
  -List là tập hợp các phần tử có thứ tự và có thể bị trùng lặp 
  -Các phần tử được truy cập bằng chỉ số(index) từ 0
  -Kích thước có thể thay đổi được
  */
//Khai báo list
  List<String> list1 = ['a', 'b', 'c'];
  var list2 = [1, 2, 3]; //sử dụng var
  List<String> list3 = []; //list rỗng
  var list4 = List<int>.filled(3,0);
  print(list4);

  //1. Thêm phần tử 
  list2.add(4); //Thêm 1 phần tử 
  list1.addAll(['d', 'e', 'f']); //Thêm nhiều phần tử 
  list1.insert(0, 'a');//Chèn 1 phần tử tại vị trí được chọn
  list1.insertAll(7, ['k','m', 'l']);//Chèn nhiều phần tử tại ví trí được chọn
  print(list1);

  //2. Xóa phần tử 
  list1.remove('a'); //Xóa 1 phần tử được chọn 
  list1.removeAt(0); //Xóa phần tử tại 1 vị trí được chọn 
  list1.removeLast(); //Xóa phần tử cuối
  list1.removeWhere((e)=>e=='a'); //Xóa theo điều kiện 
  list3.clear();
  print(list1);

  // 3. Truy cập phần tử 
  print(list1[0]); //Truy cập bằng chỉ số
  print(list1.first); //Truy cập phần tử đầu
  print(list1.last);  //Truy cập phần tử cuối 
  print(list1.length); //Lấy độ dài của list
  print(list1);

  // 4. Kiểm tra
  print(list1.isEmpty);
  print('List 3:${list3.isEmpty?'Rỗng':'Không Rỗng'}');
  print(list2.contains(1));

  // 5. Biến đổi 
  List <int> list5 = [2,1,3,4];
  list5.sort(); // sắp xếp tăng dần 
  print(list5);
  print(list5.reversed);//Đảo ngược thứ tự cách 1
 

  // 6. Cắt và Nối
  var sublist = list5.sublist(1,3); //Cắt 1 sublist từ vị trí 1 đến bé hơn 3
  print(sublist);

  var Join = list1.join(','); //Hợp nhất 
  print(Join);

  // 7. Duyệt phần tử bên trong list
  list5.forEach((element){
    print(element);
  });

 
  return;
}