import 'package:bisku/features/home/persentaion/views/widgets/shop_list_view_item.dart';
import 'package:flutter/material.dart';

class ShopsListView extends StatelessWidget {
  const ShopsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 6),
            child: ShopsListViewItem(),
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

