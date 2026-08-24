import 'package:flutter/material.dart';

class PaymentSuccessfully extends StatelessWidget {
  const PaymentSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/true.png')),
          Text(
            'Congratulations',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              color: Color(0xff5A88C6),
            ),
          ),
          Text(
            'Your Payment Is Successfully',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
    );
  }
}
