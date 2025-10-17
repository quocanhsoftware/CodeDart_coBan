void Trochoitrontim(){
  print("===Ví dụ1: Trò chơi năm mười===");
  //Tạo ra stream đếm số (5,10,15...100) mỗi 2s lên một lần
  Stream<int> stream = Stream.periodic(Duration(seconds:2), (x)=>x+1).take(20);
  //Lắng nghe 
  stream.listen(
    (x) => print("Nghe được số: ${x*5} - đang chạy trốn!"),
    onDone: () => print("Người bị bắt đầu đi tìm! "),
    onError: (loi) => print("Có vấn đề, ngưng cuộc chơi ($loi)"),
  );
}
void main() {
  Trochoitrontim();
  }
