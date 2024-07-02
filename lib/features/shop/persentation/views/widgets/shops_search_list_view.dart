import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/constants.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShopsResultListView extends StatelessWidget {
  const ShopsResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {
              context.go(AppRouter.kHomeView);
            },
            splashColor: kPrimaryColor.withOpacity(0.3),
            child: SearchShopItem(
              image: kShopsImages[index],
              name: kShopsnames[index],
            )),
      ),
      itemCount: kResultList.length,
    );
  }
}

class SearchShopItem extends StatelessWidget {
  const SearchShopItem({super.key, required this.image, required this.name});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusDirectional.circular(8),
          child: Card(
            margin: EdgeInsets.zero,
            child: Image.asset(
              height: 60,
              width: 60,
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              overflow: TextOverflow.ellipsis,
              name,
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        )),
      ],
    );
  }
}
