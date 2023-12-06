import 'package:flutter/material.dart';

class TextInTail extends StatelessWidget {
  const TextInTail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 16),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Color(0xff6D4DC6), fontSize: 16),
                  ))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "By signing up you indicate that you have read and",
            style: TextStyle(fontSize: 12),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "agreed to the Patch",
                style: TextStyle(fontSize: 12),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    " Terms of Service",
                    style: TextStyle(color: Color(0xff6D4DC6), fontSize: 12),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
