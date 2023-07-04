import 'package:flutter/material.dart';
import 'package:tenth_class/model/bmi_brain.dart';

class BMIResultScreen extends StatelessWidget {
  final BMIBrain brain;
  const BMIResultScreen({super.key, required this.brain});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        centerTitle: true,
        title: const Text(
          "BMI RESULT",
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Your Body Mass Index is",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                Text(
                  brain.bmi.toStringAsFixed(2),
                  style: const TextStyle(
                      fontSize: 52,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 12),
                Text(
                  brain.descriptionForBMI(),
                  style: const TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
