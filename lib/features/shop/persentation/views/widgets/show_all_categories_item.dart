import 'package:flutter/material.dart';

class ShowAllCateogriesItem extends StatelessWidget {
  const ShowAllCateogriesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 205, 204, 204),
            radius: 40,
            child: Icon(
              Icons.apps_sharp,
            ),
          ),
          Text(
            'All Categories',
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
