import 'package:flutter/material.dart';
class MyListTile extends StatelessWidget {
  final String name;
  final IconData icon;
  final void Function() onTap;

 MyListTile({super.key, required this.name, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Icon(icon),
        title: Text(name),
      ),
    );
  }
}