import 'package:bisku/constants.dart';
import 'package:bisku/features/shop/persentation/views/widgets/shope_view_bottom_sheet.dart';
import 'package:flutter/material.dart';

class ShopHomeViewBottomNavigationBar extends StatefulWidget {
  const ShopHomeViewBottomNavigationBar({super.key, required this.time});
  final String time;
  @override
  State<ShopHomeViewBottomNavigationBar> createState() =>
      _ShopHomeViewBottomNavigationBarState();
}

class _ShopHomeViewBottomNavigationBarState
    extends State<ShopHomeViewBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color.fromARGB(255, 225, 225, 225),
        boxShadow: [
          BoxShadow(
              color: kPrimaryColor.withOpacity(0.3),
              offset: const Offset(0, 20),
              blurRadius: 20)
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/l.png',
            width: 30,
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 5,
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.time),
           const    Text(
                'Delivery detiales',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32))),
                    context: context,
                    builder: (context) {
                      return const ShopHomeViewBottomSheet();
                    });
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(255, 118, 116, 116),
              ))
        ],
      ),
    );
  }
}
