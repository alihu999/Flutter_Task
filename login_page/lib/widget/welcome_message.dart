import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Welcome Back!",
          style: TextStyle(fontSize: 23, color: Color(0xff283335)),
        ),
        Text(
          "Login to continue Radio App",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff283335),
          ),
        )
      ],
    );
  }
}
