import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
          color: kItemColor, borderRadius: BorderRadius.circular(24)),
      width: width,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Search in Bisku',
            style: Styles.textStyle16.copyWith(
              fontSize: 12,
              color: kPrimaryColor.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(
            Icons.search,
            size: 12,
            color: kPrimaryColor.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}
