// import 'package:doctor_app/screens/cover_screen.dart';
// import 'package:doctor_app/screens/login_screen.dart';
// import 'package:doctor_app/screens/register_screen.dart';
import 'package:doctor_app/screens/doctor_details_screen.dart';
// import 'package:doctor_app/screens/home_screen.dart';
import 'package:doctor_app/widget/custom_bottom_nev_bar.dart';
// import 'package:doctor_app/screens/payment_successfully.dart';
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
          ButtomNevBarScreen(),
          // HomeScreen(),
          DoctorDetailsScreen(),
          // PaymentSuccessfully(),
        ],
      ),
    ),
  );
}
