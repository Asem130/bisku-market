import 'package:bisku/core/widgets/custom_search.dart';
import 'package:bisku/features/shop/persentation/views/widgets/carousel_shop_home_view.dart';
import 'package:bisku/features/shop/persentation/views/widgets/categories_grid_view.dart';
import 'package:bisku/features/shop/persentation/views/widgets/delivery_or_reservation.dart';
import 'package:bisku/features/shop/persentation/views/widgets/menue_section.dart';
import 'package:flutter/material.dart';

class ShopHomeViewBody extends StatelessWidget {
  const ShopHomeViewBody(
      {super.key, required this.searchTitle, required this.shopName});
  final String searchTitle;
  final String shopName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          const SliverToBoxAdapter(
            child: CarouselShopHomeViewSlider(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          const SliverToBoxAdapter(
            child: DeliverOrReserv(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          const SliverToBoxAdapter(
            child: CategoriresGridView(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverToBoxAdapter(
              child: MenuSection(shopName: shopName, text: 'Meat and fish')),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 60,
            ),
          ),
          SliverToBoxAdapter(
              child: MenuSection(
                  shopName: shopName, text: 'Vegetables and fruits')),
        ],
      ),
    );
  }
}
