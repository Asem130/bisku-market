import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/features/shop/persentation/views/widgets/shop_home_view_body.dart';
import 'package:bisku/features/shop/persentation/views/widgets/shop_home_view_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ShopHomeView extends StatelessWidget {
  const ShopHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar:
          const SafeArea(child: ShopHomeViewBottomNavigationBar()),
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/s.jpg',
              width: 50,
              height: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Elgelany',
              style: Styles.textStyle24.copyWith(fontSize: 18),
            ),
          ],
        ),
      ),
      body: const ShopHomeViewBody(),
    );
  }
}
