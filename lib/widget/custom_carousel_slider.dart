// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:doctor_app/models/slider_model.dart';
// import 'package:doctor_app/widget/custom_banner.dart';
// import 'package:flutter/material.dart';

// class CustomSliderBanner extends StatelessWidget {
//   const CustomSliderBanner({
//     super.key,
//     required this.sliders,
//     this.height = 180,
//     this.autoPlay = true,
//     this.autoPlayInterval = const Duration(seconds: 3),
//   });

//   final List<SliderModel> sliders;
//   final double height;
//   final bool autoPlay;
//   final Duration autoPlayInterval;

//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider.builder(
//       itemCount: sliders.length,
//       itemBuilder: (context, index, realIndex) {
//         return CustomBanner(slider: sliders[index]);
//       },
//       options: CarouselOptions(
//         height: height,
//         autoPlay: autoPlay,
//         autoPlayInterval: autoPlayInterval,
//         autoPlayAnimationDuration: const Duration(milliseconds: 800),
//         enlargeCenterPage: true,
//         viewportFraction: 0.9,
//       ),
//     );
//   }
// }
