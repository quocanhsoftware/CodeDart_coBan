  /* 
  expr1 ? expr2 : expr3
  -Nếu expr1 đúng thì trả về expr2 ngược lại thì trả về expr3

  expr1 ?? expr2 
  -Nếu expr1 không null thì trả về expr1 nếu ngược lại thì trả về expr2
  */
void main(){
  int a = 10;
  var kiemtra = (a%2==0)? "10 là số chẳn" : "10 là số lẻ";
  print(kiemtra);

  int? b;
  int c = b??5;
  print(c);

  int z = 100;
  int d = z??50;
  print(d);
}