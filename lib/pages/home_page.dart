import 'package:flutter/material.dart';
import 'package:minimum_ecommerce_app/components/my_drawer.dart';
import 'package:minimum_ecommerce_app/models/shop.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Shop _shop = Shop();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text("Shop page"),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/cart_page");
        },
        child: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: _shop.productList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 200,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                      _shop.productList[index]["image"],
                      height: 120,
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(_shop.productList[index]["productName"]),
                        InkWell(
                          onTap: () {
                            _shop.cartList.add(_shop.productList);
                            setState(() {
                            //
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
