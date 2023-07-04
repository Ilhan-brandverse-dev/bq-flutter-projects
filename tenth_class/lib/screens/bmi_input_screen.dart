import 'package:flutter/material.dart';
import 'package:tenth_class/commons/labelled_icon.dart';
import 'package:tenth_class/commons/lablled_counter.dart';
import 'package:tenth_class/commons/reusable_card.dart';
import 'package:tenth_class/model/bmi_brain.dart';
import 'package:tenth_class/screens/bmi_result_screen.dart';

enum Gender { male, female }

class BMIInputScreen extends StatefulWidget {
  const BMIInputScreen({super.key});

  @override
  State<BMIInputScreen> createState() => _BMIInputScreenState();
}

class _BMIInputScreenState extends State<BMIInputScreen> {
  Gender? selectedGender;
  double height = 90;
  int age = 160;
  int weight = 50;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                          onPressed: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          bgColor: selectedGender == Gender.male
                              ? const Color(0xFF1D1E33)
                              : Colors.grey,
                          body: const LabelledIcon(
                              icon: Icons.male, label: "MALE"))),
                  const SizedBox(width: 12),
                  Expanded(
                      child: ReusableCard(
                          onPressed: () {
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          },
                          bgColor: selectedGender == Gender.female
                              ? const Color(0xFF1D1E33)
                              : Colors.grey,
                          body: const LabelledIcon(
                              icon: Icons.female, label: "FEMALE"))),
                ],
              ),
              ReusableCard(
                  body: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "HEIGHT: ${height.round()}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            "cm",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Slider(
                        max: 200,
                        min: 1,
                        value: height,
                        activeColor: const Color(0xFF1D1E33),
                        inactiveColor: const Color(0xFF1D1E33).withOpacity(0.1),
                        onChanged: (updatedValue) {
                          setState(() {
                            height = updatedValue;
                          });
                        },
                      )
                    ],
                  ),
                  onPressed: () {},
                  bgColor: Colors.grey),
              Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                        body: LabelledCounter(
                          label: "AGE",
                          value: age,
                          onIncrementPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                          onDecrementPressed: () {
                            setState(() {
                              if (age >= 1) {
                                age--;
                              }
                            });
                          },
                        ),
                        onPressed: () {},
                        bgColor: Colors.grey),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ReusableCard(
                        body: LabelledCounter(
                          label: "WEIGHT",
                          value: weight,
                          onIncrementPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          onDecrementPressed: () {
                            setState(() {
                              if (weight >= 1) {
                                weight--;
                              }
                            });
                          },
                        ),
                        onPressed: () {},
                        bgColor: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 56,
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    BMIBrain brainCalc = BMIBrain(height.round(), weight);
                    brainCalc.calculateBmi();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BMIResultScreen(brain: brainCalc)));
                  },
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
