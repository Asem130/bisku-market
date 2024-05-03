import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
            image: AssetImage(
              'assets/images/big-sale-discount-banner-template-promotion-illustration-free-vector.jpg',
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
