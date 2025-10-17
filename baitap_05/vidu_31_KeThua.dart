class Product{
  double price;
  int quantity;
  String name;

  Product(this.price, this.quantity, this.name);
  void showtotal(){
    print("Total price is ${quantity*price}");
  }
}

class Tablet extends Product{
  double width = 0;
  double height = 0;
  Tablet(this.height, this.width, double price, int quantity, String name)
  : super(price, quantity, name);

  @override
  void showtotal() {
    print("Name Product is: $name");
    super.showtotal();
  }

}
void main(){
  Product p = Product(5000000, 12, "Apple");

  Product p1 = new Tablet(7, 8, 6000000, 12, "Apple");
  p.showtotal();
  print("\n");
  p1.showtotal();
  

}