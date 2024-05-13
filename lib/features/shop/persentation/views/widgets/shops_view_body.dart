import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/core/widgets/custom_search.dart';
import 'package:bisku/features/shop/persentation/views/widgets/shops_grid_view.dart';
import 'package:flutter/material.dart';

class ShopsViewBody extends StatelessWidget {
  const ShopsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        const SliverToBoxAdapter(
          child: CustomSearch(
            hintText: 'Search',
          ),
        ),
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
