import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShowAllCategories extends StatelessWidget {
  const ShowAllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Categories'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: const ShowAllCategoriesBody(),
    );
  }
}

class ShowAllCategoriesBody extends StatelessWidget {
  const ShowAllCategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 17,
          shrinkWrap: true,
          clipBehavior: Clip.hardEdge,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.8,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            if (index == 3 ||
                index == 4 ||
                index == 5 ||
                index == 9 ||
                index == 10 ||
                index == 11) {
              return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kCategoryMenueItems);
                  },
                  child: const CategoryItemwithdiferent());
            } else {
              return GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kCategoryMenueItems);
                },
                child: const CategoryItem(),
              );
            }
          }),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 160,
      width: MediaQuery.of(context).size.width / 3.2,
      decoration: BoxDecoration(
        color: const Color(0xffF0EEEE),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            'Discount and promps',
            style: Styles.textStyle16.copyWith(),
          ),
          const SizedBox(
            height: 15,
          ),
          Stack(children: [
            const CircleAvatar(radius: 26, backgroundColor: Color(0xffE98E24)),
            Image.asset(
              'assets/images/Percentage-Icon-Transparent-Background 9.png',
              width: 70,
              height: 55,
            )
          ]),
        ],
      ),
    );
  }
}

class CategoryItemwithdiferent extends StatelessWidget {
  const CategoryItemwithdiferent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 150,
      width: MediaQuery.of(context).size.width / 3.2,
      decoration: BoxDecoration(
        color: const Color(0xffF0EEEE),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            'Bakery and pastries',
            style: Styles.textStyle16.copyWith(),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Stack(children: [
              const CircleAvatar(
                  radius: 26, backgroundColor: Color(0xffE0C8C8)),
              Image.asset(
                'assets/images/170469-fresh-bakery-png-image-high-quality 2.png',
                width: 70,
                height: 55,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
