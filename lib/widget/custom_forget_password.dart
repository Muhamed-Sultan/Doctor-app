import 'package:doctor_app/widget/custom_buttoms.dart';
import 'package:doctor_app/widget/custom_text_field.dart';
import 'package:doctor_app/widget/custom_text_field_validator.dart';
import 'package:doctor_app/widget/custom_validation_otp.dart';
import 'package:flutter/material.dart';

class CustomForgetPassword extends StatelessWidget {
  CustomForgetPassword({super.key});
  final loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
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
              SizedBox(height: 70),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Forget Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              SizedBox(height: 7),
              Text(
                'Enter your email for the verification proccesss, we will send 4 digits code to your email.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff5A88C6),
                ),
              ),
              SizedBox(height: 30),
              CustomTextFieldValidator(
                formKey: loginFormKey,
                children: [
                  CustomTextField(
                    label: 'Email',
                    labelColor: Color(0xff677294),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }

                      if (!value.contains('@')) {
                        return 'Please enter a valid email';
                      }

                      return null;
                    },
                    isOutline: true,
                  ),
                  SizedBox(height: 30),
                  CustomButtom(
                    text: 'Continue',
                    ontap: () {
                      if (loginFormKey.currentState!.validate()) {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => CustomValidationOTP(),
                        );
                      }
                    },
                    color: Color(0xff5A88C6),
                    textcolor: Color(0xffFFFFFF),
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
