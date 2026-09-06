import 'package:doctor_app/models/slider_model.dart';
import 'package:doctor_app/screens/search_screen.dart';
import 'package:doctor_app/widget/custom_banner.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                CustomSliderBanner(
                  sliders: [
                    SliderModel(
                      image: 'assets/images/d1.png',
                      title: 'Medical Center',
                      subTitle:
                          'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et',
                    ),

                    SliderModel(
                      image: 'assets/images/d2.png',
                      title: 'Find Doctor',
                      subTitle:
                          'Book your appointment with the best doctors easily.',
                    ),

                    SliderModel(
                      image: 'assets/images/d3.png',
                      title: 'Medical Care',
                      subTitle:
                          'Get the best medical services from trusted doctors.',
                    ),
                  ],
                ),
                SizedBox(height: 30.6),
                Row(
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xff858585),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 31.8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 149,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xff5A88C6),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Dentist',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 149,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xff5A88C6),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Theripist',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 149,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xff5A88C6),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'surgeon',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 33.8),
                Row(
                  children: [
                    Text(
                      'All Doctors',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          color: Color(0xff858585),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                CustomBanner(
                  slider: SliderModel(
                    image: 'assets/images/d1.png',
                    title: 'Medical Center',
                    subTitle:
                        'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
