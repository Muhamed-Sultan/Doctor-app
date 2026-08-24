import 'package:doctor_app/widget/custom_buttoms.dart';
import 'package:doctor_app/widget/custom_text_field.dart';
import 'package:doctor_app/widget/custom_text_field_validator.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Create New Account',
                    style: TextStyle(
                      color: Color(0xff5A88C6),
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                SizedBox(height: 25.6),
                CustomTextFieldValidator(
                  formKey: loginFormKey,
                  children: [
                    Text(
                      'Full Name',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 14.56),
                    CustomTextField(
                      label: 'Enter Your Full Name',
                      labelColor: Color(0xff858585),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      isOutline: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your full name';
                        }
                        if (RegExp(r'[0-9]').hasMatch(value)) {
                          return 'Name cannot contain numbers';
                        }
                        if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                          return 'Name can only contain letters';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 18),
                    Text(
                      'Email',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 17),
                    CustomTextField(
                      label: 'Enter Your Email',
                      labelColor: Color(0xff858585),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      isOutline: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }

                        if (!value.contains('@')) {
                          return 'Please enter a valid email';
                        }

                        return null;
                      },
                    ),
                    SizedBox(height: 18),
                    Text(
                      'Password',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 19.03),
                    CustomTextField(
                      label: 'Enter Your Password',
                      labelColor: Color(0xff858585),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      isOutline: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (!value.contains(
                          RegExp(r'[!@#$%^&*(),.?":{}|<>]'),
                        )) {
                          return 'Password must contain at least one special character';
                        }
                        if (!value.contains((RegExp(r'[A-Z]')))) {
                          return 'Password must contain at least one uppercase letter';
                        }
                        if (!value.contains((RegExp(r'[0-9]')))) {
                          return 'Password must contain at least one number';
                        }
                        if (value.length < 10) {
                          return 'Password must be at least 10 characters';
                        }

                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 16.54),
                    CustomTextField(
                      label: 'Enter Your Phone Number',
                      labelColor: Color(0xff858585),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      isOutline: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a value';
                        }

                        if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return 'Only numbers are allowed';
                        }

                        return null;
                      },
                    ),
                  ],
                ),
                SizedBox(height: 25.12),
                CustomButtom(
                  text: 'Sign Up',
                  ontap: () {
                    if (loginFormKey.currentState!.validate()) {
                      print('Login OK');
                    }
                  },
                  color: Color(0xff5A88C6),
                  textcolor: Color(0xffFFFFFF),
                  textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 22),
                Center(
                  child: Text(
                    'OR',
                    style: TextStyle(
                      color: Color(0xff858585),
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/facebook.png'),
                      radius: 25,
                    ),
                    SizedBox(width: 29),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/google.png'),
                      radius: 25,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff858585),
                      ),
                    ),
                    Text(
                      'SignUp',
                      style: TextStyle(
                        color: Color(0xff5A88C6),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
