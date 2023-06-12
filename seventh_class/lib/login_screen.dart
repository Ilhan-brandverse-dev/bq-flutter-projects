import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          color: const Color(0xffFED8C3),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: size.height * 0.62,
                  width: size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(28),
                          topRight: Radius.circular(28))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Log In",
                        style: TextStyle(
                            color: Color(0xff44564A),
                            fontSize: 36,
                            fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                            color: Color(0xff44564A).withOpacity(0.7),
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        cursorColor: const Color(0xff44564A),
                        decoration: InputDecoration(
                          fillColor: const Color(0xff44564A).withOpacity(0.1),
                          filled: true,
                          hintText: "abcd@gmail.com",
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Color(0xff44564A),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                            color: Color(0xff44564A).withOpacity(0.7),
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        cursorColor: const Color(0xff44564A),
                        decoration: InputDecoration(
                          fillColor: const Color(0xff44564A).withOpacity(0.1),
                          filled: true,
                          hintText: "*********",
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xff44564A),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                      const Spacer(),
                      Center(
                        child: SizedBox(
                          height: 56,
                          width: size.width * 0.7,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff44564A),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () {},
                              child: const Text(
                                'Submit',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/plants.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
