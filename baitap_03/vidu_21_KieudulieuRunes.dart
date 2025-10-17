void main(){
  /*
  -Runes là tập hợp các điểm mã Unicode của một chuỗi
  -Dùng để xử lí các kí unicode, đặc biệt như emoji, kí tự đặc biệt
  -Mỗi kí tự unicode được biểu diễn bằng 1 số nguyên
  */

  //Cách khai báo:
  String str = 'Hello';
  Runes runes1 = str.runes;

  Runes runes2 = Runes('\u2665');
  Runes runes3 = Runes('\u{1F600}');
  print(runes3);

  //Các phương thức và thuộc tính 
  // 1. Chuyển đổi 
  //Từ Runes sang String 
  String heartSymbol = String.fromCharCodes(runes3);
  print(heartSymbol);

  //Chuyển từ Unicode sang String 
  String emoji = String.fromCharCode(0x2665);
  String symbol = String.fromCharCode(0x1F600);
  print(emoji);
  print(symbol);

  // 2. Xử lí
  print(runes3.length);
  print(runes3.first);
  print(runes3.last);

  //Duyệt qua từng điểm mã 
  runes1.forEach((int kitu){
    print('Unicode:$kitu - Kí tự: ${String.fromCharCode(kitu)}');
  });

  // 3, Kiểm tra 
  print(runes1.isEmpty);
  print(runes1.isNotEmpty);

  //xử lí emoji trong ứng dụng 
  //Hiển thị kí tự đặc biệt (copyright, trademark)
  //Tạo các biểu tượng đánh giá (sao, tim)
  //Xử lí văn bản đa ngôn ngữ có kí tự đặc biệt 

}