import 'package:bisku/features/shop/persentation/views/widgets/menue_section_list_view_item.dart';
import 'package:bisku/features/shop/persentation/views/widgets/menue_section_show_all_list_view_items.dart';
import 'package:flutter/material.dart';

class MenuSectionListView extends StatelessWidget {
  const MenuSectionListView({super.key, required this.shopName});
    final String shopName;
  final List<String> name = const [
    'Beef',
    'lamb',
    'veal',
    'pork',
    'kangaroo',
    'Chicken',
    'turkey',
    'duck',
    'emu',
    'goose',
    'bush birds',
    'Fish',
    'prawns',
    'crab',
    'lobster',
    'mussels',
    'oysters',
    'scallops',
    'clams'
  ];
  final List<String> price = const [
    '550 \$',
    '420 \$',
    '236 \$',
    '920 \$',
    '102 \$',
    '214 \$',
    '146 \$',
    '283 \$',
    '580 \$',
    '73 \$',
    '70 \$',
    '36 \$',
    '91 \$',
    '158 \$',
    '88 \$',
    '78 \$',
    '358 \$',
    '477 \$',
    '190 \$',
  ];
  final List<String> kilo = const [
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
    '1 kg',
  ];
  final List<String> images = const [
    'https://img.freepik.com/free-photo/raw-steak-white-paper_144627-10269.jpg?t=st=1719509495~exp=1719513095~hmac=d26248805c49fd328e98a35600033bd25b85ca45c94d65c8a06886b386966549&w=1060',
    'https://img.freepik.com/premium-photo/raw-lamb-leg-loin-bone-with-herbs-meat-cutting-board-white-isolated-background_151517-690.jpg?w=1380',
    'https://img.freepik.com/free-photo/vertical-view-green-fresh-red-raw-meat-cutlery-set-cutting-board-pepper-lemon-wooden-hammer-green-black-mix-color-background_179666-47280.jpg?t=st=1719507380~exp=1719510980~hmac=c37ac4f8d5ba807557dde62eff489151b61ee3027c30882c0e5d51d17546a382&w=740',
    'https://img.freepik.com/premium-photo/raw-chicken-cubes-white-plate_79964-7.jpg?w=1380',
    'https://img.freepik.com/free-photo/raw-meat-with-ingredients-cooking-meal_144627-24076.jpg?t=st=1719507641~exp=1719511241~hmac=9ad0595e9bd4d5a30a84d13d7cc52d54c7fd286bbc573486a6d483030ba3d62c&w=740',
    'https://img.freepik.com/free-photo/raw-chicken-meat_1203-6759.jpg?t=st=1719507670~exp=1719511270~hmac=7f390fded5a6f51531e3805ecae685fa1e85ef4db9c9e13a8b841fbaaa287096&w=900',
    'https://img.freepik.com/free-photo/top-view-fresh-chicken-with-red-tomatoes-dark-blue-surface_179666-44617.jpg?t=st=1719507703~exp=1719511303~hmac=acdbf93cdff57825a5fdf3bfe715205454c32ae54e392c6692d8990e461a28c3&w=900',
    'https://img.freepik.com/premium-photo/top-view-raw-duck-legs-with-oranges-herbs-rosemary-cumin-salt-pepper_341862-4519.jpg?w=740',
    'https://img.freepik.com/free-photo/top-view-seasoned-meat-cooking_23-2148599760.jpg?t=st=1719507756~exp=1719511356~hmac=d5d902fab930329e8f4ce05e30c30819dfe59830737d667cda6c0a09566447e5&w=900',
    'https://img.freepik.com/free-photo/knife-napkin-near-chicken-fillet_23-2147765489.jpg?t=st=1719507785~exp=1719511385~hmac=eadaf0a43ffe8902d96a2cb4983394a7635f31f5ac2ee8f53f22600b51a4487a&w=900',
    'https://img.freepik.com/free-photo/raw-chicken-drumsticks-with-spices-red-black-peppers_114579-48713.jpg?t=st=1719507812~exp=1719511412~hmac=745cfb78932933ecef3969da88c2d60bbd0304a4db53edadf3ac243dd8a1a5fd&w=900',
    'https://img.freepik.com/free-photo/tilapia-raw_1339-896.jpg?t=st=1719507852~exp=1719511452~hmac=531c70befa56af4245a53e5a22e0a1aee68f2b716b1f2a69c40c48624d4f5ea5&w=900',
    'https://img.freepik.com/free-photo/two-tail-shrimp-with-fresh-lemon-rosemary-white_2829-18134.jpg?t=st=1719507876~exp=1719511476~hmac=0e58427c12dfed24fa13ca3cf7405176bef17b8aa834470f7d06163b171bafa5&w=900',
    'https://img.freepik.com/free-photo/steamed-crabs-white-background_1232-3353.jpg?t=st=1719507900~exp=1719511500~hmac=d9f824628734c40a1dd058c86aafa5993fcb0c1e29bf40b70d67bb06ba710195&w=900',
    'https://img.freepik.com/free-photo/shrimps-isolated-white_144627-29911.jpg?t=st=1719507920~exp=1719511520~hmac=db94727ad499c8e1c5f49c5c12fefa2738d5fe5a54de8f18c52cecc8f15058bb&w=740',
    'https://img.freepik.com/free-photo/delicious-mussels-white_144627-16606.jpg?t=st=1719507946~exp=1719511546~hmac=dc57d213c99dd05e864ceaaa02c5943554d8a0da1c479534c91f12758e7790ce&w=900',
    'https://img.freepik.com/free-photo/fresh-oyster_144627-29986.jpg?t=st=1719507969~exp=1719511569~hmac=a56241e116c6f47c973e897b8165e5ad8bd50e9a33da5f5f8a309ae1687b6b9c&w=900',
    'https://img.freepik.com/free-photo/steamed-shrimp-dumplings-dim-sum_1339-4163.jpg?t=st=1719507990~exp=1719511590~hmac=072d1134b2de0d6a195402c7d76cc6fbdd72af78d60442fb8d308913a86d1565&w=900',
    'https://img.freepik.com/free-photo/mussel-isolated_1203-6923.jpg?t=st=1719508009~exp=1719511609~hmac=c7bc47cd26570fd38385d1e45839450b64350ba78d173704a9ecd190b7bd85e7&w=900'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            if (index == 9) {
              return const MenuSectionListViewShowAllItems();
            } else {
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: MenuSectionListViewItem(
                  shopName:shopName ,
                  image: images[index],
                  price: price[index],
                  name: name[index],
                  kilo: kilo[index],
                ),
              );
            }
          }),
    );
  }
}
