import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ShopHomeViewConditionItem extends StatelessWidget {
  const ShopHomeViewConditionItem(
      {super.key,
      required this.contentText,
      required this.titleText,
      required this.imageIcon,
      required this.price});
  final String contentText;
  final String titleText;
  final String price;
  final String imageIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(24)),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                imageIcon,
                width: 30,
                height: 30,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                titleText,
                style: Styles.textStyle16.copyWith(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 92, 92, 92),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Text(
                price,
                style: Styles.textStyle16.copyWith(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 92, 92, 92),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            textAlign: TextAlign.start,
            contentText,
            style: Styles.textStyle16.copyWith(
              fontSize: 14,
              color: const Color.fromARGB(255, 92, 92, 92),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
