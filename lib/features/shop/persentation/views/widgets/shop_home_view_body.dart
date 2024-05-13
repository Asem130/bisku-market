import 'package:bisku/core/widgets/custom_search.dart';
import 'package:bisku/features/shop/persentation/views/widgets/carousel_shop_home_view.dart';
import 'package:bisku/features/shop/persentation/views/widgets/categories_grid_view.dart';
import 'package:bisku/features/shop/persentation/views/widgets/delivery_or_reservation.dart';
import 'package:bisku/features/shop/persentation/views/widgets/menue_section.dart';
import 'package:flutter/material.dart';

class ShopHomeViewBody extends StatelessWidget {
  const ShopHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CustomSearch(
              hintText: 'Search in elgelany',
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverToBoxAdapter(
            child: CarouselShopHomeViewSlider(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverToBoxAdapter(
            child: DeliverOrReserv(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverToBoxAdapter(
            child: CategoriresGridView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverToBoxAdapter(child: MenuSection(text: 'Meat and fish')),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 60,
            ),
          ),
          SliverToBoxAdapter(child: MenuSection(text: 'Vegetables and fruits')),
        ],
      ),
    );
  }
}
