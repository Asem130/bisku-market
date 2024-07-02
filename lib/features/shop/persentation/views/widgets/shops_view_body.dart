import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/features/shop/persentation/views/widgets/searh_for_shop.dart';
import 'package:bisku/features/shop/persentation/views/widgets/shops_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShopsViewBody extends StatelessWidget {
  const ShopsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            'Nearby Supermarkets',
            style: Styles.textStyle26.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        const SliverToBoxAdapter(child: ShopsGridView()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            'All Supermarkets',
            style: Styles.textStyle26.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        const SliverToBoxAdapter(child: ShopsGridView()),
      ]),
    );
  }
}
