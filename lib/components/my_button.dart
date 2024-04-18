import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final Function() onTap;
 final Widget child;

   const MyButton({super.key, required this.child , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color:Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(15)

        ),
        padding: const EdgeInsets.all(20),

        child: child,
      ),
    );
  }
}
