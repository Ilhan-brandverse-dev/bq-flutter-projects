import 'package:flutter/material.dart';

class LabelledIcon extends StatelessWidget {
  final String label;
  final IconData icon;
  const LabelledIcon({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
        const SizedBox(height: 12),
        Text(
          label,
          style: const TextStyle(
              fontSize: 32, color: Colors.white, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
