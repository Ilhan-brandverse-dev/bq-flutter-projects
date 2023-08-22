import 'package:api_exampletwo/controller/auth_controller.dart';
import 'package:api_exampletwo/screens/login_screen.dart';
import 'package:api_exampletwo/widgets/custom_button.dart';
import 'package:api_exampletwo/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  AuthController authController = AuthController();
  bool isLoading = false;
  registerUser() async {
    setState(() {
      isLoading = true;
    });
    bool result = await authController.register(email.text, password.text);
    setState(() {
      isLoading = false;
    });
    if (result) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("User registered succesfull")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("User registered not succesfull")));
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
                            registerUser();
                          },
                          text: 'Register'),
                  const SizedBox(height: 20),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign in?',
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
