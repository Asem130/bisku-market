import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AboutShop extends StatelessWidget {
  const AboutShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: Colors.grey),
      child: Center(
        child: Row(
          children: [
            Text(
              textAlign: TextAlign.start,
              'About shop',
              style: Styles.textStyle16.copyWith(
                fontSize: 18,
                color: const Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_drop_down))
          ],
        ),
      ),
    );
  }
}
