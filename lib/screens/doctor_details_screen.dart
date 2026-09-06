import 'package:doctor_app/screens/home_screen.dart';
import 'package:doctor_app/widget/custom_buttoms.dart';
import 'package:flutter/material.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen({super.key});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  String? selectedTime;
  String? selectedData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios, size: 32),
                        ),
                      ),

                      const Text(
                        'Appointment',
                        style: TextStyle(
                          color: Color(0xff5A88C6),
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 37.5),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/images/d1.png'),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Dr. Pankaj',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 17),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Color(0xffE1EAF6),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.chat_bubble_outline_sharp,
                                size: 15,
                                color: Color(0xff162236),
                              ),
                            ),
                            SizedBox(width: 17),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Color(0xffE1EAF6),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.call_outlined,
                                size: 15,
                                color: Color(0xff162236),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 14),
                        Text(
                          'denteeth',
                          style: TextStyle(
                            color: Color(0xff858585),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '\$120.00',
                          style: TextStyle(
                            color: Color(0xff5A88C6),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 44),
                Text(
                  'Details',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 17),
                Text(
                  'Worem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo',
                  style: TextStyle(
                    color: Color(0xff858585),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 44.3),
                Row(
                  children: [
                    Text(
                      'Working Hours',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 26),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(times.length, (index) {
                      final time = times[index];

                      return Padding(
                        padding: EdgeInsets.only(
                          right: index == times.length - 1 ? 0 : 15,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTime = time;
                            });
                          },
                          child: Container(
                            width: 120,
                            height: 80,
                            decoration: BoxDecoration(
                              color: selectedTime == time
                                  ? const Color(0xff5A88C6)
                                  : const Color(0xffF5F5F5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                time,
                                style: TextStyle(
                                  color: selectedTime == time
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 29),
                Row(
                  children: [
                    Text(
                      'Data',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 26),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(days.length, (index) {
                      final day = days[index];

                      return Padding(
                        padding: EdgeInsets.only(
                          right: index == days.length - 1 ? 0 : 15,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedData = day;
                            });
                          },
                          child: Container(
                            width: 150,
                            height: 70,
                            decoration: BoxDecoration(
                              color: selectedData == day
                                  ? const Color(0xff5A88C6)
                                  : const Color(0xffF5F5F5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                day,
                                style: TextStyle(
                                  color: selectedData == day
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 50),
                CustomButtom(
                  text: 'Book an Appointment',
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  color: Color(0xff5A88C6),
                  textcolor: Colors.white,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
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

final List<String> times = ['10.00 AM', '11.00 AM', '12.00 PM'];
final List<String> days = ['MON 3', 'TUE 4', 'WED 5'];
