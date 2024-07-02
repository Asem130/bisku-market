import 'package:bisku/features/shop/persentation/views/widgets/shops_search_list_view.dart';
import 'package:flutter/material.dart';

class ShopsSearchResult extends StatelessWidget {
  const ShopsSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: ShopsResultListView(
           
          ),
        );
  }
}