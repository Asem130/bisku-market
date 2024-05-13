import 'package:bisku/features/shop/persentation/views/widgets/menue_section_list_view_item.dart';
import 'package:bisku/features/shop/persentation/views/widgets/menue_section_show_all_list_view_items.dart';
import 'package:flutter/material.dart';

class MenuSectionListView extends StatelessWidget {
  const MenuSectionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            if (index == 9) {
              return const MenuSectionListViewShowAllItems();
            } else {
              return const Padding(
                padding: EdgeInsets.only(right: 12),
                child: MenuSectionListViewItem(),
              );
            }
          }),
    );
  }
}
