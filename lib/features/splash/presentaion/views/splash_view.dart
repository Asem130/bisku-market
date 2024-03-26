import 'package:bisku/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState;
    goToHomeView();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
    );
  }

  void goToHomeView() {
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      GoRouter.of(context).push(AppRouter.kRegisterView);
    });
  }
}
