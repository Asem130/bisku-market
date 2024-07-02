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
          color: const Color.fromARGB(255, 255, 255, 255),
          boxShadow: const [
            BoxShadow(
                blurRadius: 2,
                color: Color.fromARGB(255, 226, 226, 226),
                offset: Offset(0, 3)),
          ],
        ),
        child: Center(
          child: Image.network(
            image,
            width: width / 6,
            height: 60,
          ),
        ),
      ),
    );
  }
}
