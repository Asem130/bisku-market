import 'package:flutter/material.dart';

class ShopsListViewItem extends StatelessWidget {
  const ShopsListViewItem({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 140,
          height: 75,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  blurRadius: 2,
                  color: Color.fromARGB(255, 171, 173, 171),
                  offset: Offset(0, 3)),
            ],
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(image),
            ),
          ),
        ),
      ],
    );
  }
}
