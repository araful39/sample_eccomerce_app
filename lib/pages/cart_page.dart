import 'package:flutter/material.dart';
import 'package:minimum_ecommerce_app/components/my_cart.dart';
import 'package:minimum_ecommerce_app/models/cart_list.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // payment method
  void payNow(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        content: const Text("Payment with...",),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.red,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Nogod",style: TextStyle(color: Colors.white),),
                ),
              ) ,
              Container(
                color: Colors.pink,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Bkash",style: TextStyle(color: Colors.white),),
                ),
              ),
              Container(
                color: Colors.indigo,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Rocket",style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          )
        ],
      );
    });
  }
// remove from Cart
  void removeToCart(int index) {
    cartList.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text(
          "Cart",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: cartList.isNotEmpty?ListView.builder(
          itemCount: cartList.length,
          itemBuilder: (context, index) {
            // my cart components
            return MyCart(
              productName: cartList[index][0],
              price: cartList[index][1],
              imagePath: cartList[index][2],
              onTap: () => removeToCart(index),
            );
          }):const Center(
        child: Text("Empty",style: TextStyle(color: Colors.white,fontSize: 50),),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 80,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Total price : ${calculateTotal()}",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),

            cartList.isNotEmpty?  InkWell(
              onTap: payNow,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.white
                    )
                ),
                child: const Text("Pay now",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
              ),
            ):const Text("")
            ],
          ),
        ),
      ),
    );
  }
}
