import 'package:api_exampletwo/controller/auth_controller.dart';
import 'package:api_exampletwo/screens/home_screen.dart';
import 'package:api_exampletwo/screens/register_screen.dart';
import 'package:api_exampletwo/widgets/custom_button.dart';
import 'package:api_exampletwo/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  AuthController authController = AuthController();
  bool isLoading = false;
  loginUser() async {
    setState(() {
      isLoading = true;
    });
    bool result = await authController.login(email.text, password.text);
    setState(() {
      isLoading = false;
    });
    if (result) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => HomeScreen()));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Invalid credentials")));
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                      controller: email, label: 'Email', validator: (_) {}),
                  const SizedBox(height: 12),
                  CustomTextField(
                    controller: password,
                    label: 'Password',
                    validator: (_) {},
                    obscureText: true,
                  ),
                  const SizedBox(height: 32),
                  isLoading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : CustomButton(
                          onPressed: () {
                            loginUser();
                          },
                          text: 'Log in'),
                  const SizedBox(height: 20),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const RegisterScreen()));
                      },
                      child: Text(
                        'Sign up?',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
