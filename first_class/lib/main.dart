import 'package:first_class/home_page.dart';
import 'package:first_class/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BQ First app",
      home: SecondScreen()
    );
  }
}
