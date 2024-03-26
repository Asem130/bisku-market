import 'package:bisku/features/home/persentaion/views/widgets/home_view_ad_space.dart';
import 'package:bisku/features/home/persentaion/views/widgets/popular_categories.dart';
import 'package:flutter/material.dart';

class HomeViewMainBanner extends StatelessWidget {
  const HomeViewMainBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AdSpace(),
        SizedBox(
          width: 15,
        ),
        PopularCategories()
      ],
    );
  }
}
