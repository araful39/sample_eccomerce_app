import 'package:flutter/material.dart';
import 'package:minimum_ecommerce_app/components/my_container.dart';
import 'package:minimum_ecommerce_app/components/my_drawer.dart';
import 'package:minimum_ecommerce_app/models/cart_list.dart';
import 'package:minimum_ecommerce_app/models/products.dart';
import 'package:minimum_ecommerce_app/pages/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
void addToCart(int index) {
    showDialog(context: context, builder: (context){
      return const AlertDialog(
        content: Text("add successfully",style: TextStyle(

        ),),
      );
    });
    cartList.add(products[index]);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CartPage()));
              },
              child: const Icon(Icons.shopping_cart,color: Colors.indigoAccent,size: 50,)),
          const SizedBox(
            width: 10,
          )
        ],
        // leading: Icon(Icons.menu),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("Shop page"),
      ),
      drawer: const MyDrawer(),

      body: GridView.builder(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return MyContainer(
              productName: products[index][0],
              price: products[index][1],
                textColor: Colors.indigoAccent,
              imagepath: products[index][2],
              containerColor: Colors.white,
            onTap:()=>
              addToCart(index)



            );
          }),
    );
  }
}
