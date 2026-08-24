import 'package:doctor_app/widget/custom_home_search.dart';
import 'package:doctor_app/widget/custom_slider_banner.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              children: [
                SizedBox(height: 32),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/mm.png'),
                      radius: 50,
                    ),
                    SizedBox(width: 11),
                    Column(
                      children: [
                        Text(
                          'Hi,Welcome Back',
                          style: TextStyle(
                            color: Color(0xff858585),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Pankaj Sharma',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_none_outlined),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                CustomHomeSearch(),
                SizedBox(height: 32),
                CustomSliderBanner(images: ['assets/images/d.png']),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
