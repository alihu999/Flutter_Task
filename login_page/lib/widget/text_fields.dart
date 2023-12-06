import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:login_page/login_page.dart';

import 'custom_text_field.dart';

class TextFields extends StatefulWidget {
  const TextFields({super.key});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: emailFormKey,
          child: CustomTextField(
            controller: emailController,
            hintText: "Email Address",
            preIcon: const Icon(Icons.email_outlined),
            keyBoardType: TextInputType.emailAddress,
            isPassword: false,
            validator: (email) {
              return email != null && !EmailValidator.validate(email)
                  ? "enter valid Email"
                  : null;
            },
          ),
        ),
        Form(
          key: passwordFormKey,
          child: CustomTextField(
            hintText: "Password",
            preIcon: const Icon(Icons.lock_outline),
            keyBoardType: TextInputType.text,
            isPassword: true,
            controller: passwordController,
            validator: (password) {
              if (password != null && password.length < 4) {
                return "Enter min 7 characters";
              } else {
                return null;
              }
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    value: isChecked,
                    shape: const CircleBorder(),
                    fillColor: const MaterialStatePropertyAll(Colors.white),
                    checkColor: const Color(0XFFF9567E),
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
                      });
                    }),
                const Text(
                  "Remember me",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                )
              ],
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Forget password?",
                style: TextStyle(fontSize: 14, color: Color(0xff5C5E6F)),
              ),
            )
          ],
        )
      ],
    );
  }
}
