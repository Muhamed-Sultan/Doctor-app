// import 'package:doctor_app/screens/cover_screen.dart';
// import 'package:doctor_app/screens/login_screen.dart';
// import 'package:doctor_app/screens/register_screen.dart';
import 'package:doctor_app/screens/home_screen.dart';
import 'package:doctor_app/screens/payment_successfully.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        children: [
          // CoverScreen(),
          // LoginScreen(),
          // RegisterScreen(),
          HomeScreen(),
          PaymentSuccessfully(),
        ],
      ),
    ),
  );
}
