import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget chiled;
  final Color buttomColor;
  final void Function()? onpress;
  const CustomButton(
      {super.key,
      required this.chiled,
      required this.buttomColor,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(offset: (Offset(0, 4)), color: Colors.grey, blurRadius: 5)
      ]),
      child: MaterialButton(
          height: 50,
          minWidth: double.infinity,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6))),
          color: buttomColor,
          onPressed: onpress,
          child: Center(
            child: chiled,
          )),
    );
  }
}
