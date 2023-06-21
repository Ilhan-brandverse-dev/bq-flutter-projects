import 'package:eight_class/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final Size size = MediaQuery.of(context).size;
    TextEditingController nameCtrl = TextEditingController();
    TextEditingController emailCtrl = TextEditingController();
    TextEditingController passCtrl = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Singup Form",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameCtrl,
                validator: RequiredValidator(errorText: "Required*"),
                decoration: const InputDecoration(
                    hintText: "John Smith", labelText: 'Name'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: emailCtrl,
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Required*'),
                  EmailValidator(errorText: "Enter a valid email*")
                ]),
                decoration: const InputDecoration(
                    hintText: "abc@gmail.com", labelText: 'Email'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: passCtrl,
                obscureText: true,
                validator: LengthRangeValidator(
                    min: 8,
                    max: 10,
                    errorText: "Password length should be 8-10"),
                decoration: const InputDecoration(
                    hintText: "xxxxxxxx", labelText: 'Password'),
              ),
              const SizedBox(height: 32),
              SizedBox(
                height: 52,
                width: size.width,
                child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate() == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                      email: emailCtrl.text,
                                      name: nameCtrl.text,
                                      password: passCtrl.text,
                                    )));
                      }
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
