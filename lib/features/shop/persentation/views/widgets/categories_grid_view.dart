import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/features/shop/persentation/views/widgets/shop_category_item.dart';
import 'package:bisku/features/shop/persentation/views/widgets/show_all_categories_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoriresGridView extends StatelessWidget {
  const CategoriresGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          shrinkWrap: true,
          clipBehavior: Clip.hardEdge,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.9,
            crossAxisSpacing: 0,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            if (index == 7) {
              return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kShowAllCategories);
                  },
                  child: const ShowAllCateogriesItem());
            } else {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: ShopCategoryItem(),
              );
            }
          }),
    );
  }
}
