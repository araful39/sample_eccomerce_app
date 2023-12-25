import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  final String productName;
  final double price;
  final String imagePath;
  final void Function() onTap;

  MyCart(
      {super.key,
      required this.productName,
      required this.imagePath,
      required this.onTap,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
        ),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
                child: Image.network(imagePath)),

            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  Text('1 kg ',
                      style: TextStyle(color: Colors.indigo)),

                  Text("${price.toString()} tk ",
                    style: TextStyle(
                        color: Colors.indigo,

                      ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: InkWell(
                onTap:onTap,
                child: Icon(Icons.backspace_outlined,size: 40),
              ),
            )
          ],
        ),
      ),
    );
  }
}
