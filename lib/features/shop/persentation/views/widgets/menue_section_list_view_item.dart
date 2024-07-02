import 'package:bisku/features/shop/persentation/manger/basket_cubit/basket_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuSectionListViewItem extends StatelessWidget {
  const MenuSectionListViewItem({
    super.key,
    required this.image,
    required this.kilo,
    required this.price,
    required this.name, required this.shopName,
  });
  final String image;
  final String kilo;
  final String price;
  final String name;
    final String shopName;
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
                  image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
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
                  kilo,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  price,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 119, 0),
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  BlocProvider.of<BasketCubit>(context).addItemToBasket(
                    name: name,
                    kilo: kilo,
                    image: image,
                    price: price,
                    shopName: shopName 
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
