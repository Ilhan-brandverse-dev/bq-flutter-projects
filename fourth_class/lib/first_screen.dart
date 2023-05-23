import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          color: Colors.teal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.indigo,
                ),
              ),
              Flexible(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.purple,
                ),
              ),
              Flexible(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.orange,
                ),
              ),
              Flexible(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                ),
              ),
              Flexible(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.black,
                ),
              ),
              Flexible(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
