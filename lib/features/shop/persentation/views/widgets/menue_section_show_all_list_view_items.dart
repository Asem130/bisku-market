import 'package:flutter/material.dart';

class MenuSectionListViewShowAllItems extends StatelessWidget {
  const MenuSectionListViewShowAllItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 231, 230, 230),
      ),
      width: MediaQuery.of(context).size.width / 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 2,
                        color: Color.fromARGB(255, 171, 173, 171),
                        offset: Offset(0, 3)),
                  ],
                  borderRadius: BorderRadius.circular(28),
                  color: const Color.fromARGB(255, 249, 248, 248),
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            const Text(
              'All items',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
