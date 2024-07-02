import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/core/widgets/custom_text_button.dart';
import 'package:bisku/features/shop/data/models/search/search.dart';
import 'package:bisku/features/shop/persentation/manger/basket_cubit/basket_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailes extends StatelessWidget {
  const ProductDetailes({super.key, required this.model});
  final SearchModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                  model.image.replaceAll('http://biskueapi.runasp.net/', '')),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      model.name,
                      style: Styles.textStyle26,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      model.discroption,
                      style: Styles.textStyle16,
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  model.price.toString(),
                  style: const TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 255, 119, 0),
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Spacer(),
            CustomTextButton(
              text: 'Add to basket',
              onTap: () {
                BlocProvider.of<BasketCubit>(context).addItemToBasket(
                  name: model.name,
                  kilo: '',
                  image: model.image,
                  price: model.price.toString(),
                  shopName: '',
                );
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Item Added Succssefuly'),
                  duration: Duration(seconds: 2),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
