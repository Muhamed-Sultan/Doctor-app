import 'package:doctor_app/widget/custom_box_otp.dart';
import 'package:doctor_app/widget/custom_buttoms.dart';
import 'package:doctor_app/widget/custom_rest_password.dart';
import 'package:flutter/material.dart';

class CustomValidationOTP extends StatefulWidget {
  const CustomValidationOTP({super.key});

  @override
  State<CustomValidationOTP> createState() => _CustomValidationOTPState();
}

class _CustomValidationOTPState extends State<CustomValidationOTP> {
  String otpCode = '';
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
          child: Column(
            children: [
              Center(
                child: Divider(
                  thickness: 8,
                  color: Color(0xffC4C4C4),
                  indent: 120,
                  endIndent: 120,
                  radius: BorderRadius.circular(15),
                ),
              ),
              const SizedBox(height: 55),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter 4 Digits Code',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Enter the 4 digits code that you received on your email.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff5A88C6),
                ),
              ),
              const SizedBox(height: 27),
              CustomBoxOTP(
                onCodeChanged: (code) {
                  otpCode = code;
                },
              ),
              const SizedBox(height: 40),
              CustomButtom(
                text: 'Continue',
                ontap: () {
                  {
                    if (otpCode.length == 4) {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => CustomRestPassword(),
                      );
                    }
                  }
                },
                color: Color(0xff5A88C6),
                textcolor: Color(0xffFFFFFF),
                textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
