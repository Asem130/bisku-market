import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      child: HomeDrawerBody(),
    );
  }
}

class HomeDrawerBody extends StatelessWidget {
  const HomeDrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 24),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(180),
            child: Image.asset(
                'assets/images/WhatsApp Image 2024-06-29 at 6.44.54 AM.jpeg'),
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            children: [
              Icon(
                size: 30,
                Icons.person,
                color: kPrimaryColor,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Mohamed Helmy',
                style: Styles.textStyle16,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Icon(
                size: 30,
                Icons.phone,
                color: kPrimaryColor,
              ),
              const SizedBox(
                width: 16,
              ),
              const Text(
                '01011111111',
                style: Styles.textStyle16,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
                color: kPrimaryColor,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Icon(
                size: 30,
                Icons.shopping_basket_rounded,
                color: kPrimaryColor,
              ),
              const SizedBox(
                width: 16,
              ),
              const Text(
                'Basket',
                style: Styles.textStyle16,
              ),
              const Spacer(),
              IconButton(
                color: kPrimaryColor,
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kBasketView);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Icon(
                size: 30,
                Icons.diamond,
                color: kPrimaryColor,
              ),
              const SizedBox(
                width: 16,
              ),
              const Text(
                'Blue Member',
                style: Styles.textStyle16,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios),
                color: kPrimaryColor,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Icon(
                size: 30,
                Icons.logout,
                color: kPrimaryColor,
              ),
              const SizedBox(
                width: 16,
              ),
              const Text(
                'Logout',
                style: Styles.textStyle16,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  GoRouter.of(context).go(AppRouter.kLoginView);
                },
                icon: const Icon(Icons.arrow_forward_ios),
                color: kPrimaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
