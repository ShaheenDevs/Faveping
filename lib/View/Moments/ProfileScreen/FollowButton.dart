import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    final double screenHeight = MediaQuery.of(context).size.height;

    double buttonHeight = orientation == Orientation.landscape ? screenHeight * 0.08 : screenHeight * 0.05;
    double fontSize = buttonHeight * 0.4;

    return Container(
      height: buttonHeight,
      margin: EdgeInsets.symmetric(horizontal: 55),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFB605AE), Color(0xFFDE4D88)],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
