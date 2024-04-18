import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String productName;
  final double price;
  final Color textColor;
  final Color containerColor;
  final Function()? onTap;

  final String imagepath;
  const MyContainer({
    super.key,
    required this.productName,
    required this.price,
    required this.imagepath,
    required this.textColor,
    required this.containerColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            color: containerColor, borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Image.network(
              imagepath,
              height: 150,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      productName,
                      style: TextStyle(
                          color: textColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text('1 kg ',
                            style: TextStyle(color: textColor)),
                        Text(' ${price.toString()}: tk',
                            style: TextStyle(color: textColor)),
                      ],
                    )
                  ],
                ),
                InkWell(
                  onTap: onTap,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
