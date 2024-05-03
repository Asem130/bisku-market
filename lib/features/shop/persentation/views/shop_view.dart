import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/features/home/persentaion/views/widgets/shop_list_view_item.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ShopViewBody()),
    );
  }
}

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        SliverToBoxAdapter(
          child: Text(
            'Nearby Supermarkets',
            style: Styles.textStyle26.copyWith(
              fontFamily: 'Judson',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        const SliverToBoxAdapter(child: NearbyShopsGridView()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            'All Supermarkets',
            style: Styles.textStyle26.copyWith(
              fontFamily: 'Judson',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
         const SliverToBoxAdapter(child: NearbyShopsGridView()),
      ]),
    );
  }
}

class NearbySupermarkets extends StatelessWidget {
  const NearbySupermarkets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nearby Supermarkets',
            style: Styles.textStyle26.copyWith(
              fontFamily: 'Judson',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const NearbyShopsGridView(),
        ],
      ),
    );
  }
}

class NearbyShopsGridView extends StatelessWidget {
  const NearbyShopsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:400,
      child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 30,
          clipBehavior: Clip.hardEdge,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 40,
          ),
          itemBuilder: (context, index) {
            return const ShopsListViewItem();
          }),
    );
  }
}

class AllSupermarkets extends StatelessWidget {
  const AllSupermarkets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'All Supermarkets',
            style: Styles.textStyle26.copyWith(
              fontFamily: 'Judson',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const NearbyShopsGridView(),
        ],
      ),
    );
  }
}
