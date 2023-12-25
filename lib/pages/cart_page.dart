import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimum_ecommerce_app/models/cart_list.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: cartList.length,
          itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            child: Column(
              children: [
                Image.network(cartList[index][0]),
                Text(cartList[index][1].toString()),

              ],
            ),
          ),
        );
      }),
    );
  }
}
