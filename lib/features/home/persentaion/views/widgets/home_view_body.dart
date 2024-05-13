import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/core/widgets/custom_search_bar.dart';
import 'package:bisku/features/home/persentaion/views/widgets/ad_banner.dart';
import 'package:bisku/features/home/persentaion/views/widgets/custom_app_bar.dart';
import 'package:bisku/features/home/persentaion/views/widgets/home_view_banner.dart';
import 'package:bisku/features/home/persentaion/views/widgets/shops_list_view.dart';
import 'package:bisku/features/home/persentaion/views/widgets/shops_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

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
          SizedBox(
            height: 30,
          ),
          Expanded(child: PostItem()),
        ],
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/a17a80188970383.65a4e0610b435.png',
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Gelany',
                style: Styles.textStyle24.copyWith(fontFamily: 'Lobster'),
              ),
              const Spacer(),
              const ShopRate(),
            ],
          ),
          const Text('10-13 min'),
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
              )),
        ],
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
