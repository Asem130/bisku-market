import 'package:bisku/features/shop/data/models/product/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/basket_cubit/basket_cubit.dart';

class TomatoItem extends StatefulWidget {
  const TomatoItem(
      {super.key,
      required this.name,
      required this.kilo,
      required this.image,
      required this.price,
      required this.shopName,
      required this.model});
  final String name;
  final String kilo;
  final String image;
  final String price;
  final String shopName;
  final ProductModel model;
  @override
  State<TomatoItem> createState() => _TomatoItemState();
}

class _TomatoItemState extends State<TomatoItem> {
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  widget.model.image
                      .replaceAll('http://biskueapi.runasp.net/', ''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.model.name,
              maxLines: 1,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.kilo,
                  style: const TextStyle(color: Colors.grey),
                ),
                const Spacer(),
                Text(
                  widget.model.price.toString(),
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 119, 0),
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  BlocProvider.of<BasketCubit>(context).addItemToBasket(
                    name: widget.name,
                    kilo: widget.kilo,
                    image: widget.image,
                    price: widget.price,
                    shopName: widget.shopName,
                  );

                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Item Added Succssefuly'),
                    duration: Duration(seconds: 2),
                  ));
                },
                icon: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
