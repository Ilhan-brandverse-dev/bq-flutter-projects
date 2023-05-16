import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black, width: 2)),
          child: Column(
            children: const [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.red,
                size: 32,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "Welcome to Flutter ",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black, width: 2)),
          child: Column(
            children: const [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.green,
                size: 32,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "Welcome to Flutter ",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    )));
  }
}
