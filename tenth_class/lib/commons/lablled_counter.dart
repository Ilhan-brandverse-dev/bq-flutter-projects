import 'package:flutter/material.dart';

class LabelledCounter extends StatelessWidget {
  final String label;
  final int value;
  final Function() onIncrementPressed;
  final Function() onDecrementPressed;
  const LabelledCounter(
      {super.key,
      required this.label,
      required this.value,
      required this.onDecrementPressed,
      required this.onIncrementPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
              fontSize: 32, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          "$value",
          style: const TextStyle(
              fontSize: 40, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: onIncrementPressed,
              child: const CircleAvatar(
                backgroundColor: Color(0xFF0A0E21),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 12),
            GestureDetector(
              onTap: onDecrementPressed,
              child: const CircleAvatar(
                backgroundColor: Color(0xFF0A0E21),
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
