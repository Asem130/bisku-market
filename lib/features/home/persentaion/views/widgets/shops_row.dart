import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShopsRow extends StatelessWidget {
  const ShopsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Shops',
          style: Styles.textStyle26.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kShopView);
          },
          child: Row(
            children: [
              Text(
                'All',
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w900),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 12,
              )
            ],
          ),
        ),
      ],
    );
  }
}
