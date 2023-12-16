import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minimum_ecommerce_app/pages/intro_page.dart';

import 'my_list_tile.dart';

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
                      offset: Offset(0, 4),
                      color: Color(0xFFF9D276).withOpacity(0.15),
                      spreadRadius: 1,
                      blurRadius: 50)
                ], color: Colors.white),
                child: Icon(
                  Icons.shopping_bag,
                  size: 100,
                )),
          ),
          SizedBox(
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
                Navigator.pushNamed(context, '/cart_page');
              }),
          Spacer(),
          MyListTile(
            name: 'Exit',
            icon: Icons.exit_to_app,
            onTap: () => Navigator.pushNamedAndRemoveUntil(
                context, 'intro_page', (route) => false),
          ),
        ],
      ),
    );
  }
}
