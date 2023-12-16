import 'package:flutter/material.dart';
import 'package:minimum_ecommerce_app/components/my_button.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_bag,
                color: Theme.of(context).colorScheme.inversePrimary,
                size: 100,
              ),
              Text(
                "Minimum Shop",
                style: TextStyle(fontSize: 50),
              ),
              Text("Premium Quality products"),
              SizedBox(height: 10,),
              MyButton(
                  child: Icon(Icons.arrow_forward),
                  onTap: (){
                    Navigator.pushNamed(context, '/home_page');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
