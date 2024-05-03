import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/features/splash/presentaion/views/widgets/bisku_sliding_animation.dart';
import 'package:bisku/features/splash/presentaion/views/widgets/title_sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController biskuTextAnimationController;
  late Animation<Offset> biskuTextSlidingAnimation;
  late AnimationController titleTextAnimationController;
  late Animation<Offset> titleTextSlidingAnimation;

  late final AnimationController logoController = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: logoController,
    curve: Curves.easeIn,
  );
  @override
  void initState() {
    super.initState();
    initSlidingBiskuText();

    initSlidingTitleText();
    goToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    logoController.dispose();
    biskuTextAnimationController.dispose();
  }

  void goToHomeView() {
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      GoRouter.of(context).push(AppRouter.kOnBoardingView);
    });
  }

  void initSlidingBiskuText() {
    biskuTextAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1, milliseconds: 400),
    );
    biskuTextSlidingAnimation =
        Tween<Offset>(begin: const Offset(-3, -3), end: Offset.zero)
            .animate(biskuTextAnimationController);
    biskuTextAnimationController.forward();
  }

  void initSlidingTitleText() {
    titleTextAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1, milliseconds: 400),
    );
    titleTextSlidingAnimation =
        Tween<Offset>(begin: const Offset(1, 5), end: Offset.zero)
            .animate(titleTextAnimationController);
    titleTextAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: BiskuTextSlidingAnimation(
                textSlidingAnimation: biskuTextSlidingAnimation),
          ),
          const SizedBox(
            height: 20,
          ),
          FadeTransition(
            opacity: _animation,
            child: Image.asset(
              'assets/images/510.png',
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TitleSlidingAnimation(
              textSlidingAnimation: titleTextSlidingAnimation),
        ],
      ),
    );
  }
}
