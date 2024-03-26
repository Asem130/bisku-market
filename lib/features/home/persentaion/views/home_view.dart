import 'package:bisku/core/widgets/custom_search_bar.dart';
import 'package:bisku/features/home/persentaion/views/widgets/custom_app_bar.dart';
import 'package:bisku/features/home/persentaion/views/widgets/home_view_banner.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HomeViewBody()),
    );
  }
}

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
          Text('Shops'),
          SizedBox(
            height: 15,
          ),
          ShopsListView(),
        ],
      ),
    );
  }
}

class ShopsListViewItem extends StatelessWidget {
  const ShopsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
            image: AssetImage(
              'assets/images/ad.jpg',
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}

class ShopsListView extends StatelessWidget {
  const ShopsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 6),
            child: ShopsListViewItem(),
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
