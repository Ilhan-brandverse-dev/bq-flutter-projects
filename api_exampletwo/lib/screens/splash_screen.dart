import 'package:api_exampletwo/controller/storage_controller.dart';
import 'package:api_exampletwo/screens/home_screen.dart';
import 'package:api_exampletwo/screens/login_screen.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    bool check = await StorageController().getData();
    print("User logged in===> $check");
    if (check == true) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const HomeScreen()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const LoginScreen()));
    }
  }

  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.blueAccent.withOpacity(0.3),
        child: const Center(
          child: Entry.offset(
              duration: Duration(milliseconds: 1000),
              curve: Curves.bounceIn,
              child: FlutterLogo(
                size: 250,
                style: FlutterLogoStyle.horizontal,
              )),
        ),
      ),
    );
  }
}
