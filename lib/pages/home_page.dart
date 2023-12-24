import 'package:flutter/material.dart';
import 'package:minimum_ecommerce_app/components/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text("Shop page"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text("Homepage"),
      ),
    );
  }
}
