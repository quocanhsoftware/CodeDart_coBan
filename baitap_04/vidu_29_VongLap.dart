void main(){
  // 1. Vòng lặp for 
  for (var i = 0; i < 5; i++) {
    print(i);
  }

  //Iterable: List, Set.
  //for-in
    var names = ["Le", "Van", "Quoc Anh"];
    for (var name in names) {
    print(name);
  }

  // 2. Vòng lặp while 
  int i=0;
  while(i<=5){
    print("Tôi iu bạn");
    i++;
  }

  // 3. Vòng lặp do-while (Thực hiện ít nhất 1 lần)
  int x=1;
  do {
    print(x);
    x++;
  } while (x<=4);

  //break/continue
  //break thoát khỏi vòng lặp ngay lập tức 
print("--------------------------");
  x=1;
  do {
    print(x);
    x++; //in ra 1,2 rồi dừng
    if(x==3) break;
  } while (x<=5);
print("-----------------------------");
   //continue
  x=1;
  do {
     x++;
    if(x==3) continue; //Nếu x=3 thì sẽ bỏ qua 3 
    print(x);
  } while (x<=5);
}
