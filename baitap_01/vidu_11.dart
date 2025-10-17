void main(){
  int diemtoan=10;
  int diemhoa=10;
  int tongdiem=0;
  
  //Cộn gđiểm từng môn 
  tongdiem += diemtoan;
  tongdiem += diemhoa;
  //Tính điểm trung bình 
  double diemtrungbinh = tongdiem/2;
  //Gán điểm đạt và không đạt 
  String? ketqua;
  ketqua??="Chưa xét";
  if(diemtrungbinh>=5){
    ketqua="Đạt";
  }
  print(diemtrungbinh);
  print(ketqua);
}