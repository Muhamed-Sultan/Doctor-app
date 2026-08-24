import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomSliderBanner extends StatelessWidget {
  final List<String> images;
  final double height;
  final double borderRadius;
  final bool autoPlay;
  final Duration autoPlayInterval;

  const CustomSliderBanner({
    super.key,
    required this.images,
    this.height = 180,
    this.borderRadius = 15,
    this.autoPlay = true,
    this.autoPlayInterval = const Duration(seconds: 3),
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,

      itemBuilder: (context, index, realIndex) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image.asset(
            images[index],
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        );
      },

      options: CarouselOptions(
        height: height,
        autoPlay: autoPlay,
        autoPlayInterval: autoPlayInterval,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
      ),
    );
  }
}
