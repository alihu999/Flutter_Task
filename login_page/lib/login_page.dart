import 'package:flutter/material.dart';
import 'package:login_page/widget/text_fields.dart';

import 'widget/column_of_button.dart';
import 'widget/text_in_tail.dart';
import 'widget/welcome_message.dart';

final emailController = TextEditingController();
final emailFormKey = GlobalKey<FormState>();
final passwordController = TextEditingController();
final passwordFormKey = GlobalKey<FormState>();

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xffF5F5FA),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  WelcomeMessage(), //messsage"welcome Back login to continue Radio App"
                  TextFields(), //the tow Text filed and row(remember me and forget password)
                  ColumnOfButton(), // the four button(login,google,apple,facebook)
                  TextInTail(), //sign up button and terms of services
                ],
              ),
            ),
          ),
        ));
  }
}
