import 'package:flutter/material.dart';

class ShopsGridViewItem extends StatelessWidget {
  const ShopsGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        Container(
          width: 140,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/Logo_METRO.svg.png',
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      
        const Text(
          'Metro',
          style: TextStyle(fontFamily: 'Heebo',fontWeight: FontWeight.w600,fontSize:17),
        ),
        const Text(
          '10-15 min',
          style: TextStyle(fontSize: 12,color: Colors.grey),
        ),
      ],
    );
  }
}
