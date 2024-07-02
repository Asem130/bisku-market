import 'package:flutter/material.dart';

class ShopCategoryItem extends StatelessWidget {
  const ShopCategoryItem({
    super.key,
    required this.name,
    required this.image,
  });
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 40,
            child: Image.network(
              image,
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 14,
            ),
            maxLines: 2,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
