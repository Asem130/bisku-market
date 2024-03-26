import 'package:bisku/features/home/persentaion/views/widgets/popular_categories_item.dart';
import 'package:flutter/material.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            PopularCategoriesItem(image: 'assets/images/veg.png'),
            SizedBox(
              width: 15,
            ),
            PopularCategoriesItem(image: 'assets/images/Group 1.png'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            PopularCategoriesItem(image: 'assets/images/veg.png'),
            SizedBox(
              width: 15,
            ),
            PopularCategoriesItem(image: 'assets/images/Group 1.png'),
          ],
        ),
      ],
    );
  }
}