import 'package:flutter/material.dart';

class NumButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;

  final VoidCallback buttonOnTapped;

  const NumButton({
    Key? key,
    required this.color,
    required this.text,
    required this.textColor,
    required this.buttonOnTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonOnTapped,
      child: Container(
        margin: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 24, fontFamily: "Poppins"),
          ),
        ),
      ),
    );
  }
}
