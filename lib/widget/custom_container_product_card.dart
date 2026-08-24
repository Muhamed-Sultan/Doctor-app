import 'package:flutter/material.dart';

class CustomContainerProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String quantity;
  final String price;
  final double fontsize;
  final FontWeight fontWeight;
  final Color textcolor;

  const CustomContainerProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
    required this.fontsize,
    required this.fontWeight,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 161,
          // height: 225.51,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffE2E2E2)),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                height: 55,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 33.9),
              Text(
                name,
                style: TextStyle(
                  fontSize: fontsize,
                  fontWeight: fontWeight,
                  color: textcolor,
                ),
              ),

              Text(
                quantity,
                style: const TextStyle(color: Color(0xff7C7C7C), fontSize: 14),
              ),
              SizedBox(height: 36.8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff181725),
                    ),
                  ),

                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
