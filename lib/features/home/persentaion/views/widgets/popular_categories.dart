import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/features/home/persentaion/views/widgets/popular_categories_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            GestureDetector(
                onTap: () {
                  context.push(AppRouter.kCategoryMenueItems, extra: {
                    "names": 'Fruit&Veg',
                    "images": ' categoryImages[index]',
                    "title": ' menueName[index]'
                  });
                },
                child: PopularCategoriesItem(image: categoryImages[0])),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
                onTap: () {
                  context.push(AppRouter.kCategoryMenueItems, extra: {
                    "names": 'Bakery',
                    "images": ' categoryImages[index]',
                    "title": ' menueName[index]'
                  });
                },
                child: PopularCategoriesItem(image: categoryImages[1])),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            GestureDetector(
                onTap: () {
                  context.push(AppRouter.kCategoryMenueItems, extra: {
                    "names": 'Milk',
                    "images": ' categoryImages[index]',
                    "title": ' menueName[index]'
                  });
                },
                child: PopularCategoriesItem(image: categoryImages[2])),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
                onTap: () {
                  context.push(AppRouter.kCategoryMenueItems, extra: {
                    "names": 'Meet and seafood',
                    "images": 'categoryImages[index]',
                    "title": 'menueName[index]'
                  });
                },
                child: PopularCategoriesItem(image: categoryImages[7])),
          ],
        ),
      ],
    );
  }
}
