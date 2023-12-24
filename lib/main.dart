import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimum_ecommerce_app/pages/cart_page.dart';
import 'package:minimum_ecommerce_app/pages/home_page.dart';

import 'pages/intro_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage()
      // routes: {
      //   'intro_page':(context)=>const IntroPage(),
      //   '/cart_page':(context)=> const CartPage(),
      //
      //  '/home_page':(context)=>const HomePage(),}


    );
  }
}
