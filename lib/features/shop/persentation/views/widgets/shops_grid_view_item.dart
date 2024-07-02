import 'package:flutter/material.dart';

class ShopsGridViewItem extends StatelessWidget {
  const ShopsGridViewItem(
      {super.key, required this.image, required this.name, required this.time});
  final String image;
  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 140,
          height: 80,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  blurRadius: 1,
                  color: Color.fromARGB(255, 171, 173, 171),
                  offset: Offset(0, 2)),
            ],
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(
              fontFamily: 'Heebo', fontWeight: FontWeight.w600, fontSize: 17),
        ),
        Text(
          time,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
