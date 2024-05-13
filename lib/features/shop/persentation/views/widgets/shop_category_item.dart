import 'package:flutter/material.dart';

class ShopCategoryItem extends StatelessWidget {
  const ShopCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            child: Image.asset('assets/images/fresh-beef.png',
        
            ),
          ),
          const Text(
            'Meat and Fish',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
