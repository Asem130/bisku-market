import 'package:bisku/features/home/persentaion/views/widgets/drawer.dart';
import 'package:bisku/features/home/persentaion/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: HomeDrawer(),
      body: SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
