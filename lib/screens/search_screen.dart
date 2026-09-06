import 'package:doctor_app/models/card_model.dart';
import 'package:doctor_app/widget/custom_card.dart';
import 'package:doctor_app/widget/custom_home_search.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
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
                        'All Doctors',
                        style: TextStyle(
                          color: Color(0xff5A88C6),
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                CustomHomeSearch(),
                SizedBox(height: 30),
                CustomCard(
                  card: CardModel(
                    title: 'Dr. Pankaj Sharma',
                    subTitle:
                        'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et',
                    image: 'assets/images/d1.png',
                    button: 'Book Now',
                  ),
                ),
                SizedBox(height: 25),
                CustomCard(
                  card: CardModel(
                    title: 'Dr. Pankaj Sharma',
                    subTitle:
                        'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et',
                    image: 'assets/images/d2.png',
                    button: 'Book Now',
                  ),
                ),
                SizedBox(height: 25),
                CustomCard(
                  card: CardModel(
                    title: 'Dr. Pankaj Sharma',
                    subTitle:
                        'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et',
                    image: 'assets/images/d3.png',
                    button: 'Book Now',
                  ),
                ),
                SizedBox(height: 25),
                CustomCard(
                  card: CardModel(
                    title: 'Dr. Pankaj Sharma',
                    subTitle:
                        'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et',
                    image: 'assets/images/d1.png',
                    button: 'Book Now',
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
