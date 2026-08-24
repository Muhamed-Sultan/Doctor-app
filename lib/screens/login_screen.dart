import 'package:doctor_app/widget/custom_buttoms.dart';
import 'package:doctor_app/widget/custom_text_field.dart';
import 'package:doctor_app/widget/custom_text_field_validator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 29),
                Center(
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      color: Color(0xff5A88C6),
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  'Sign In',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Enter your emails and password.',
                  style: TextStyle(
                    color: Color(0xff858585),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 40),
                CustomTextFieldValidator(
                  formKey: loginFormKey,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 16),
                    CustomTextField(
                      label: 'Enter Your Email',
                      labelColor: Color(0xff858585),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!value.contains('@')) {
                          return 'Please enter a valid email @';
                        }
                        return null;
                      },
                      isOutline: true,
                    ),
                    SizedBox(height: 28),
                    Text(
                      'Password',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 16),
                    CustomTextField(
                      label: 'Enter Your Password',
                      labelColor: Color(0xff858585),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }

                        if (value.length < 10) {
                          return 'Password must be at least 10 characters';
                        }

                        return null;
                      },
                      isOutline: true,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Password',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                CustomButtom(
                  text: 'Sign In',
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
                SizedBox(height: 29),
                Center(
                  child: Text(
                    'OR',
                    style: TextStyle(
                      color: Color(0xff858585),
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 10),
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
