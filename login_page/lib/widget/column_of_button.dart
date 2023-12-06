import 'package:flutter/material.dart';

import 'custom_button.dart';

class ColumnOfButton extends StatefulWidget {
  const ColumnOfButton({super.key});

  @override
  State<ColumnOfButton> createState() => _ColumnOfButtonState();
}

class _ColumnOfButtonState extends State<ColumnOfButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          buttomColor: const Color(0xff7A5FC9),
          chiled: const Text(
            "Login",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          onpress: () async {},
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "OR",
          style: TextStyle(fontSize: 14),
        ),
        CustomButton(
            onpress: () {},
            buttomColor: Colors.white,
            chiled: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/google logo.png",
                  height: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Continue with Google",
                  style: TextStyle(fontSize: 14),
                )
              ],
            )),
        CustomButton(
          onpress: () {},
          buttomColor: Colors.black,
          chiled: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.apple,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Sign In with apple ID",
                style: TextStyle(color: Colors.white, fontSize: 14),
              )
            ],
          ),
        ),
        CustomButton(
          onpress: () {},
          buttomColor: const Color(0xff39579A),
          chiled: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/facebook logo.png",
                height: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Continue with Facebook",
                style: TextStyle(color: Colors.white, fontSize: 14),
              )
            ],
          ),
        ),
      ],
    );
  }
}
