import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/constants.dart';
import 'package:bisku/features/home/persentaion/views/widgets/home_view_ad_space.dart';
import 'package:bisku/features/home/persentaion/views/widgets/popular_categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewMainBanner extends StatelessWidget {
  const HomeViewMainBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
            onTap: () {
              context.push(
                AppRouter.kShopHomeView,
                extra: {
                  'names': kShopsnames[5],
                  'images': kShopsImages[5],
                  'time': kShopstime[5]
                },
              );
            },
            child: const AdSpace()),
        const SizedBox(
          width: 15,
        ),
        const PopularCategories()
      ],
    );
  }
}
