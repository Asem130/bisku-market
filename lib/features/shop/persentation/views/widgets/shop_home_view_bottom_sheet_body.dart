import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/features/shop/persentation/views/widgets/about_shop.dart';
import 'package:bisku/features/shop/persentation/views/widgets/shop_home_view_condition_item.dart';
import 'package:flutter/material.dart';

class ShopHomeViewBottomSheetbody extends StatelessWidget {
  const ShopHomeViewBottomSheetbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Current conditions',
            style: Styles.textStyle24.copyWith(
              color: const Color.fromARGB(255, 92, 92, 92),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ShopHomeViewConditionItem(
            titleText: 'Delivery',
            price: '15\$',
            imageIcon: 'assets/images/Delivery Scooter.png',
            contentText:
                'The delivery price depends on the size of cart , the distance to th store, and other factors. Collect the order and we will calculate the final cost',
          ),
          const SizedBox(
            height: 20,
          ),
          const ShopHomeViewConditionItem(
            price: '5%',
            titleText: 'Service fee',
            imageIcon: 'assets/images/Cost.png',
            contentText:
                'The fee is 5% of the basket, but not more than 50 \$,and not less  than 10\$.This fee helps us cover the costs of order procssing, customers support and improving our services',
          ),
        ],
      ),
    );
  }
}
