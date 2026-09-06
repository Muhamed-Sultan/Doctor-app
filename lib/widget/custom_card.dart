import 'package:doctor_app/models/card_model.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.card});

  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffcedcee),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            Image(image: AssetImage(card.image), width: 138, height: 153),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        card.title,
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.favorite_border_outlined),
                    ],
                  ),

                  SizedBox(height: 18),

                  Text(
                    card.subTitle,
                    style: TextStyle(
                      color: Color(0xff858585),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  Spacer(),

                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(card.button),
                      ),

                      Spacer(),

                      Icon(Icons.star_border_outlined),

                      SizedBox(width: 4),

                      Text(
                        '4.9',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
