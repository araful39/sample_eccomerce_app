import 'package:flutter/material.dart';
import 'package:minimum_ecommerce_app/components/my_list_tile.dart';
import 'package:minimum_ecommerce_app/pages/cart_page.dart';
import 'package:minimum_ecommerce_app/pages/intro_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: DrawerHeader(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 4),
                      color: const Color(0xFFF9D276).withOpacity(0.15),
                      spreadRadius: 1,
                      blurRadius: 50)
                ], color: Colors.white),
                child: const Icon(
                  Icons.shopping_bag,
                  size: 100,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          MyListTile(
            name: 'Shop',
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          MyListTile(
              name: 'Cart',
              icon: Icons.shopping_cart,
              onTap: () {
                //pop drawer first
                Navigator.pop(context);
                //go to cart page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CartPage()));
              }),
          const Spacer(),
          MyListTile(
              name: 'Exit',
              icon: Icons.exit_to_app,
              onTap: () =>
                  // Navigator.pushNamedAndRemoveUntil(
                  // context, 'intro_page', (route) => false),
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const IntroPage()))),
        ],
      ),
    );
  }
}
