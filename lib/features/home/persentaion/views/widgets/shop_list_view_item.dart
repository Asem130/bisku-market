import 'package:flutter/material.dart';

class ShopsListViewItem extends StatelessWidget {
  const ShopsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 80,
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
