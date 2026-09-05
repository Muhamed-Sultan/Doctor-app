import 'package:doctor_app/screens/login_screen.dart';
import 'package:doctor_app/widget/custom_buttoms.dart';
import 'package:doctor_app/widget/custom_text_field.dart';
import 'package:doctor_app/widget/custom_text_field_validator.dart';
import 'package:flutter/material.dart';

class CustomRestPassword extends StatefulWidget {
  const CustomRestPassword({super.key});

  @override
  State<CustomRestPassword> createState() => _CustomRestPasswordState();
}

class _CustomRestPasswordState extends State<CustomRestPassword> {
  final loginFormKey = GlobalKey<FormState>();

  String password = '';

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
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                ),
              ),

              SizedBox(height: 7),

              Text(
                'Set the new password for your account so you can login and access all the features.',
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
                    label: 'New Password',
                    labelColor: Color(0xff677294),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,

                    onChanged: (value) {
                      password = value;
                    },

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }

                      if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                        return 'Password must contain at least one special character';
                      }

                      if (!value.contains(RegExp(r'[A-Z]'))) {
                        return 'Password must contain at least one uppercase letter';
                      }

                      if (!value.contains(RegExp(r'[0-9]'))) {
                        return 'Password must contain at least one number';
                      }

                      if (value.length < 10) {
                        return 'Password must be at least 10 characters';
                      }

                      return null;
                    },

                    isOutline: true,
                  ),

                  SizedBox(height: 15),

                  CustomTextField(
                    label: 'Re-enter Password',
                    labelColor: Color(0xff677294),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please re-enter your password';
                      }

                      if (value != password) {
                        return 'Passwords do not match';
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
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
