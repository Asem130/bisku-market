import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/core/widgets/custom_text_button.dart';
import 'package:bisku/features/shop/data/models/basket_item/basket_item_model.dart';
import 'package:bisku/features/shop/persentation/manger/basket_cubit/basket_cubit.dart';
import 'package:bisku/features/shop/persentation/manger/basket_cubit/basket_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BasketView extends StatelessWidget {
  const BasketView({super.key, required this.shopName});
  final String shopName;
  @override
  Widget build(BuildContext context) {
    return BasketViewBody(
      shopName: shopName,
    );
  }
}

class BasketViewBody extends StatefulWidget {
  const BasketViewBody({super.key, required this.shopName});
  final String shopName;
  @override
  State<BasketViewBody> createState() => _BasketViewBodyState();
}

class _BasketViewBodyState extends State<BasketViewBody> {
  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Basket'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Expanded(
                child: BasketListView(
              shopName: widget.shopName,
            )),
            CustomTextButton(
              text: 'Confirme order',
              onTap: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          actions: [
                            IconButton(
                                onPressed: () {
                                  if (BlocProvider.of<BasketCubit>(context).basketItems.isNotEmpty) {
                                  
                                    GoRouter.of(context)
                                        .push(AppRouter.kLoginView);
                                  } else {
                                    GoRouter.of(context).pop();
                                  }
                                },
                                icon: const Text('Okay'))
                          ],
                          title: const Text('Done'),
                          content: const Text(
                              'Your must log in first to confirm your order.'),
                        ));
              },
            )
          ],
        ),
      ),
    );
  }
}

class BasketListView extends StatefulWidget {
  const BasketListView({super.key, required this.shopName});
  final String shopName;
  @override
  State<BasketListView> createState() => _BasketListViewState();
}

List<BasketItemModel> items = [];

class _BasketListViewState extends State<BasketListView> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      items = BlocProvider.of<BasketCubit>(context).basketItems;
    });
    setState(() {});
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>
            BasketItem(shopName: widget.shopName, model: items[index]),
        itemCount: items.length);
  }
}

class BasketItem extends StatefulWidget {
  const BasketItem({super.key, required this.model, required this.shopName});
  final BasketItemModel model;
  final String shopName;
  @override
  State<BasketItem> createState() => _BasketItemState();
}

class _BasketItemState extends State<BasketItem> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<BasketCubit, BaseketStates>(
      listener: (context, state) {},
      child: ClipRRect(
        borderRadius: BorderRadiusDirectional.circular(16),
        child: Card(
          child: Row(
            children: [
              Card(
                margin: EdgeInsets.zero,
                child: Image.network(
                  height: 90,
                  width: 90,
                  widget.model.image
                      .replaceAll('http://biskueapi.runasp.net/', ''),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          widget.model.name,
                          style: Styles.textStyle16,
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(widget.shopName)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.model.kilo,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        widget.model.price,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 119, 0),
                            fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              BlocProvider.of<BasketCubit>(context)
                                  .deleteItemFromBasket(widget.model);
                              setState(() {
                                BlocProvider.of<BasketCubit>(context)
                                    .basketItems;
                              });

                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Item Deleted Succssesfuly')));
                            });
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: kPrimaryColor,
                          ))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
