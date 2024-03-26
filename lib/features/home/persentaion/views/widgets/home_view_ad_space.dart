import 'package:flutter/material.dart';

class AdSpace extends StatelessWidget {
  const AdSpace({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width / 2.5,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
            image: AssetImage(
              'assets/images/ad.jpg',
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}