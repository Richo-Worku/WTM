import 'package:flutter/material.dart';

class ReusableElevatedButton extends StatelessWidget {
  final Text buttonText;
  final GestureTapCallback? onPressed;
  const ReusableElevatedButton(
      {super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 17, 158, 128),
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 17)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
        ),
        onPressed: onPressed,
        child: buttonText,
      ),
    );
  }
}
