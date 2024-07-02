import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/constants.dart';
import 'package:bisku/core/utils/styles.dart';

import 'package:bisku/features/home/persentaion/views/widgets/ad_banner.dart';
import 'package:bisku/features/home/persentaion/views/widgets/custom_app_bar.dart';
import 'package:bisku/features/home/persentaion/views/widgets/home_bottom_sheet.dart';
import 'package:bisku/features/home/persentaion/views/widgets/home_view_banner.dart';
import 'package:bisku/features/home/persentaion/views/widgets/shops_list_view.dart';
import 'package:bisku/features/home/persentaion/views/widgets/shops_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });
  final List<String> images = const [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        slivers: [
          SliverToBoxAdapter(
              child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32),
                              topRight: Radius.circular(32))),
                      context: context,
                      builder: (context) {
                        return const HomeButtomSheet();
                      },
                    );
                  },
                  child: const CustomAppBar())),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          const SliverToBoxAdapter(child: HomeViewMainBanner()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          const SliverToBoxAdapter(child: AdBanner()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          const SliverToBoxAdapter(child: ShopsRow()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const SliverToBoxAdapter(child: ShopsListView()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          const SliverToBoxAdapter(
            child: PostsListView(),
          )
        ],
      ),
    );
  }
}

class PostsListView extends StatelessWidget {
  const PostsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: GestureDetector(
              onTap: () {
                context.push(
                  AppRouter.kShopHomeView,
                  extra: {
                    'names': kShopsnames[index],
                    'images': kShopsImages[index],
                    'time': kShopstime[index]
                  },
                );
              },
              child: PostItem(
                name: kShopsnames[index],
                image: kpostsimages[index],
                time: kShopstime[index],
              ),
            ),
          );
        },
        itemCount: 7,
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  const PostItem(
      {super.key, required this.time, required this.name, required this.image});
  final String time;
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: const Color.fromARGB(255, 235, 235, 235)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      image,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Styles.textStyle24.copyWith(fontFamily: 'Lobster'),
                  ),
                  const Spacer(),
                  const ShopRate(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text(time),
                  const Spacer(),
                  Container(
                    width: 90,
                    decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16)),
                    child: const Center(
                      child: Text('Free delivery',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 14)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class ShopRate extends StatelessWidget {
  const ShopRate({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 5.3,
        )
      ],
    );
  }
}
