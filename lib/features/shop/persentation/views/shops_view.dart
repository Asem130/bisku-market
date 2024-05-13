import 'package:bisku/features/shop/persentation/views/widgets/shops_view_body.dart';

import 'package:flutter/material.dart';

class ShopsView extends StatelessWidget {
  const ShopsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ShopsViewBody()),
    );
  }
}
