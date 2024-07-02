import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/features/shop/persentation/views/widgets/shop_home_view_body.dart';
import 'package:bisku/features/shop/persentation/views/widgets/shop_home_view_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ShopHomeView extends StatelessWidget {
  const ShopHomeView({
    super.key,
    required this.name,
    required this.image,
    required this.time,
  });
  final String name;
  final String image;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: SafeArea(
          child: ShopHomeViewBottomNavigationBar(
        time: time,
      )),
      appBar: AppBar(
        title: Row(
          children: [
            Image.network(
              image,
              width: 50,
              height: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              name,
              style: Styles.textStyle24.copyWith(fontSize: 18),
            ),
          ],
        ),
      ),
      body: ShopHomeViewBody(
        shopName: name,
        searchTitle: name,
      ),
    );
  }
}
