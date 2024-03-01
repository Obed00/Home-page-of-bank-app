import 'package:flutter/material.dart';
import 'package:lesson_one/forget_password.dart';
import 'package:lesson_one/input_field.dart';

import 'button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String id = "login page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF022E64), Color(0xFF004294), Color(0xFF00408F)],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 125),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Bank',
                    style: TextStyle(
                        fontSize: 40.18,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Transform(
                    transform: Matrix4.skewX(-0.2),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        width: 45,
                        height: 60,
                        decoration:
                            const BoxDecoration(color: Color(0xFFE6B014)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                      child: InputField(hintText: "Email"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                      child: InputField(hintText: "Password"),
                    ),
                    Padding(padding: EdgeInsets.only(top: 68), child: Button()),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 42),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ForgetPassword.id);
                    },
                    child: const Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Color(0xFFF5F5F5),
                        fontSize: 12,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: 0.18,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
