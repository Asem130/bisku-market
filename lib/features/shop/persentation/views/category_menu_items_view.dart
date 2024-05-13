import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CategoryMenueItems extends StatelessWidget {
  const CategoryMenueItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Vegetables and fruis',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: const CategoryMenueItemsbody(),
    );
  }
}

class CategoryMenueItemsbody extends StatelessWidget {
  const CategoryMenueItemsbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        SliverToBoxAdapter(
          child: Text(
            'Vegetables',
            style: Styles.textStyle26.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        const SliverToBoxAdapter(child: TomatoGridView()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            'Fruites',
            style: Styles.textStyle26.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        const SliverToBoxAdapter(child: PotatoGridView()),
      ]),
    );
  }
}

class TomatoGridView extends StatelessWidget {
  const TomatoGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 17,
        shrinkWrap: true,
        clipBehavior: Clip.hardEdge,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.55,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return const TomatoItem();
        });
  }
}

class PotatoGridView extends StatelessWidget {
  const PotatoGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 17,
        shrinkWrap: true,
        clipBehavior: Clip.hardEdge,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.55,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return const PotatoItem();
        });
  }
}

class TomatoItem extends StatelessWidget {
  const TomatoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 231, 230, 230),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          children: [
            Container(
              width: 90,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Image.asset('assets/images/5c94f114895083 18.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Beef brisket',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '1kg',
                  style: TextStyle(color: Colors.grey),
                ),
               Spacer(),
                Text(
                  '8\$',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 119, 0),
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}

class PotatoItem extends StatelessWidget {
  const PotatoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 231, 230, 230),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: 90,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Image.asset('assets/images/5c94f114895083 18.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Beef brisket',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '1kg',
                  style: TextStyle(color: Colors.grey),
                ),
                Spacer(),
                Text(
                  '290\$',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 119, 0),
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
