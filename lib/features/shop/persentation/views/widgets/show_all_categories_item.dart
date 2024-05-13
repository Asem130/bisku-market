
import 'package:flutter/material.dart';

class ShowAllCateogriesItem extends StatelessWidget {
  const ShowAllCateogriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child:  Column(
        children: [
          CircleAvatar(
            radius: 40,
            child: Icon(
              Icons.apps_sharp,
            ),
          ),
          Text(
            'All Categories',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}


