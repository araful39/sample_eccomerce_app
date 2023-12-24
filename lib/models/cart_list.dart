List cartList = [];

String calculateTotal(){
  double totalPrice=0;
  for(int i =0; i<cartList.length; i++){
    totalPrice+=double.parse(cartList[i]["price"]);
  }
  return totalPrice.toStringAsFixed(2);
}