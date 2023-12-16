import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final Function() onTap;
 final Widget child;

   MyButton({super.key, required this.child , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color:Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(15)

        ),
        padding: EdgeInsets.all(20),

        child: child,
      ),
    );
  }
}
