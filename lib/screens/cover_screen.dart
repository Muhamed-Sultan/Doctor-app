import 'package:flutter/material.dart';

class CoverScreen extends StatelessWidget {
  const CoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset('assets/images/doctor.png')),
              Text(
                'DoctorG',
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff5A88C6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
