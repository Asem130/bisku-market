import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/features/shop/persentation/views/widgets/shops_grid_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShopsGridView extends StatelessWidget {
  const ShopsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 17,
        shrinkWrap: true,
        clipBehavior: Clip.hardEdge,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.8,
          crossAxisSpacing: 20,
          mainAxisSpacing: 0,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              GoRouter.of(context).push(AppRouter.kShopHomeView);
            },
          
          child: const ShopsGridViewItem());
        });
  }
}
