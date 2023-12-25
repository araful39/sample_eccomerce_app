List cartList = [];



//total price calculat
String calculateTotal(){
  double totalPrice=0;
  for(int i =0; i<cartList.length; i++){
    totalPrice+=double.parse(cartList[i][1].toString());
  }
  return totalPrice.toStringAsFixed(2);
}