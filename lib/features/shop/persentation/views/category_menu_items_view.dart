import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/constants.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/features/shop/persentation/manger/product/product_cubit.dart';
import 'package:bisku/features/shop/persentation/views/widgets/tomato_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CategoryMenueItems extends StatelessWidget {
  const CategoryMenueItems(
      {super.key,
      required this.name,
      required this.title,
      required this.images,
      required this.shopName});
  final String name;
  final String title;
  final String shopName;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          name,
        ),
        actions: [
          IconButton(
            onPressed: () {
                 GoRouter.of(context).push(AppRouter.ksearch);
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: CategoryMenueItemsbody(
        name: name,
        title: title,
        shopName: shopName,
      ),
    );
  }
}

class CategoryMenueItemsbody extends StatelessWidget {
  const CategoryMenueItemsbody(
      {super.key,
      required this.name,
      required this.title,
      required this.shopName});
  final String name;
  final String shopName;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(24),
        child:
            CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
          SliverToBoxAdapter(
            child: Text(
              name,
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
          SliverToBoxAdapter(
              child: TomatoGridView(
            shopName: shopName,
          )),
        ]));
  }
}

class TomatoGridView extends StatefulWidget {
  const TomatoGridView({super.key, required this.shopName});
  final String shopName;

  @override
  State<TomatoGridView> createState() => _TomatoGridViewState();
}

class _TomatoGridViewState extends State<TomatoGridView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: BlocProvider.of<ProductCubit>(context).productes.length,
        shrinkWrap: true,
        clipBehavior: Clip.hardEdge,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.55,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          var pro = BlocProvider.of<ProductCubit>(context).productes;
          return TomatoItem(
            model: pro[index],
            shopName: widget.shopName,
            name: pro[index].name,
            price: pro[index].price.toString(),
            image: pro[index].image,
            kilo: pro[index].kilo,
          );
        });
  }
}
