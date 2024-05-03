import 'package:bisku/core/widgets/custom_search_bar.dart';
import 'package:bisku/features/home/persentaion/views/widgets/ad_banner.dart';
import 'package:bisku/features/home/persentaion/views/widgets/custom_app_bar.dart';
import 'package:bisku/features/home/persentaion/views/widgets/home_view_banner.dart';
import 'package:bisku/features/home/persentaion/views/widgets/shops_list_view.dart';
import 'package:bisku/features/home/persentaion/views/widgets/shops_row.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(
            height: 15,
          ),
          CustomSearchBar(),
          SizedBox(
            height: 15,
          ),
          HomeViewMainBanner(),
          SizedBox(
            height: 15,
          ),
          AdBanner(),
          SizedBox(
            height: 15,
          ),
          ShopsRow(),
          SizedBox(
            height: 10,
          ),
          ShopsListView(),
        ],
      ),
    );
  }
}
