import 'package:flutter/material.dart';

class MenuSectionListViewItem extends StatelessWidget {
  const MenuSectionListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 231, 230, 230),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: 90,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Image.asset('assets/images/5c94f114895083 18.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Beef brisket',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '400g',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '290\$',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 119, 0),
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}