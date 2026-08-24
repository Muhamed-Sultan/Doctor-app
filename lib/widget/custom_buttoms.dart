import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final Color color;
  final Color textcolor;
  final TextStyle textStyle;

  const CustomButtom({
    super.key,
    required this.text,
    required this.ontap,
    required this.color,
    required this.textcolor,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textcolor,
            ),
          ),
        ),
      ),
    );
  }
}
