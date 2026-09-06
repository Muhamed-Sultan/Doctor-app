import 'package:doctor_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ButtomNevBarScreen extends StatefulWidget {
  const ButtomNevBarScreen({super.key});

  @override
  State<ButtomNevBarScreen> createState() => _ButtomNevBarScreenState();
}

class _ButtomNevBarScreenState extends State<ButtomNevBarScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    const Center(child: Text('Appointments')),
    const Center(child: Text('Chat')),
    const Center(child: Text('Appointments')),
    const Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(child: screens[currentIndex]),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,

        backgroundColor: Colors.white,

        selectedItemColor: Colors.white,

        unselectedItemColor: Colors.black,

        showSelectedLabels: false,
        showUnselectedLabels: false,

        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: currentIndex == 0
                    ? const Color(0xff5A88C6)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Icon(
                Icons.home_outlined,
                color: currentIndex == 0 ? Colors.white : Colors.black,
              ),
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: currentIndex == 1
                    ? const Color(0xff5A88C6)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Icon(
                Icons.access_time,
                color: currentIndex == 1 ? Colors.white : Colors.black,
              ),
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: currentIndex == 2
                    ? const Color(0xff5A88C6)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Icon(
                Icons.chat_bubble_outline,
                color: currentIndex == 2 ? Colors.white : Colors.black,
              ),
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: currentIndex == 3
                    ? const Color(0xff5A88C6)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Icon(
                Icons.person_outline,
                color: currentIndex == 3 ? Colors.white : Colors.black,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
