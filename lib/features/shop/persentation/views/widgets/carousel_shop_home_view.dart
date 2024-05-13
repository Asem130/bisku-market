import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselShopHomeViewSlider extends StatelessWidget {
  const CarouselShopHomeViewSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = [
      ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.asset(
            'assets/images/big-sale-discount-banner-template-promotion-illustration-free-vector.jpg'),
      ),
    ];
    return CarouselSlider(
      items: widgets,
      options: CarouselOptions(
          height: 160,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(seconds: 1),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
          viewportFraction: 1),
    );
  }
}
