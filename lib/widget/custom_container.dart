import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String image;
  final String name;
  final double fontsize;
  final FontWeight fontWeight;
  final Color textcolor;
  final Color backgroundColor;
  final Color borderColor;

  const CustomContainer({
    super.key,
    required this.image,
    required this.name,
    required this.fontsize,
    required this.fontWeight,
    required this.textcolor,
    required this.backgroundColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 190,
          padding: const EdgeInsets.only(left: 30, right: 10),
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: borderColor, width: 1),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: fontsize,
                        fontWeight: fontWeight,
                        color: textcolor,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Text(
                      'Lorem ipsum dolor, consectetur\n'
                      'adipiscing elit. Nunc v libero et',
                      style: TextStyle(fontSize: 16, color: textcolor),
                    ),
                  ],
                ),
              ),

              Image.asset(
                image,
                width: 230,
                height: 156.84,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
