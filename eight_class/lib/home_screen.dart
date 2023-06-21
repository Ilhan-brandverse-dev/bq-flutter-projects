import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen(
      {super.key,
      required this.email,
      required this.name,
      required this.password});
  String name;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Home Screen",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text("This is a home screen"),
            const SizedBox(height: 16),
            Text(
              email,
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
            const SizedBox(height: 12),
            Text(name, style: const TextStyle(fontSize: 20, color: Colors.red)),
            const SizedBox(height: 12),
            Text(password,
                style: const TextStyle(fontSize: 20, color: Colors.green)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go Back'))
          ],
        ),
      ),
    );
  }
}
