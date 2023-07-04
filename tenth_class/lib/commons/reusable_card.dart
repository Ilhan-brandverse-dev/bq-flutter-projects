import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget body;
  final Function() onPressed;
  final Color bgColor;
  const ReusableCard(
      {super.key,
      required this.body,
      required this.onPressed,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: bgColor),
        child: body,
      ),
    );
  }
}
