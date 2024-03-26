import 'package:bisku/constants.dart';
import 'package:flutter/material.dart';

class PopularCategoriesItem extends StatelessWidget {
  const PopularCategoriesItem({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      splashColor: const Color.fromARGB(255, 121, 120, 117),
      child: Container(
        width: width / 5,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kItemColor,
        ),
        child: Center(
          child: Image.asset(
            image,
            width: 50,
            height: 50,
          ),
        ),
      ),
    );
  }
}