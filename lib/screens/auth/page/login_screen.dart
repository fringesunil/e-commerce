import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/fclogos.png'),
            SizedBox(height: size.height * 0.04),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.06,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.06,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Container(
                width: size.width * 0.9,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ))),
            SizedBox(height: size.height * 0.04),
            SizedBox(
                width: size.width * 0.9,
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: "Doesn't have an account?",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: "Century Gothic")),
                        TextSpan(
                            text: ' Sign Up',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                                fontFamily: "Century Gothic")),
                      ]),
                    ),
                  ),
                ]))
          ],
        ),
      )),
    );
  }
}
