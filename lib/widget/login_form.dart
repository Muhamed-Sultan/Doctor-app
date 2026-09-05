import 'package:doctor_app/widget/custom_buttoms.dart';
import 'package:doctor_app/widget/custom_forget_password.dart';
import 'package:doctor_app/widget/custom_text_field.dart';
import 'package:doctor_app/widget/custom_text_field_validator.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return CustomForgetPassword();
                      },
                    );
                  },
                  child: Text(
                    'Forget Password',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
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
              textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
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
          ],
        ),
      ],
    );
  }
}
