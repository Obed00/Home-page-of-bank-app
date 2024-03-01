import 'package:flutter/material.dart';
import 'package:lesson_one/button.dart';
import 'package:lesson_one/input_field.dart';

import 'login.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
  static const String id = "forget password page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo,
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
              padding: const EdgeInsets.only(top: 60, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          child: const Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                'Back',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Bank',
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Transform(
                        transform: Matrix4.skewX(-0.2),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Container(
                            width: 20,
                            height: 32,
                            decoration:
                                const BoxDecoration(color: Color(0xFFE6B014)),
                            // color: Color(),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 191),
                child: Column(
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.only(bottom: 16, left: 16, right: 16),
                        child: InputField(hintText: 'New Password')),
                    Padding(
                        padding:
                            EdgeInsets.only(bottom: 16, left: 16, right: 16),
                        child: InputField(hintText: 'Confirm New Password')),
                    Padding(padding: EdgeInsets.only(top: 68), child: Button()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
