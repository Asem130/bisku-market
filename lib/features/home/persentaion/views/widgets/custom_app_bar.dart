import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,});
 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Color.fromARGB(255, 30, 31, 30),
                spreadRadius: 1,
              ),
            ],
          ),
          child: GestureDetector(
            onTap: (){
              Scaffold.of(context).openDrawer();
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/IMG_6914.jpg',
              ),
              radius: 22,
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Dlivery adress and time',
                  style: Styles.textStyle24
                      .copyWith(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'sabry abo alm street',
                  style: Styles.textStyle24
                      .copyWith(color: kPrimaryColor, fontSize: 12),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.add_location,
                  size: 14,
                  color: kPrimaryColor,
                ),
              ],
            ),
          ],
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          height: 25,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: const LinearGradient(
              colors: [
                Colors.amber,
                kPrimaryColor,
              ],
            ),
          ),
          child: const Center(
            child: Text(
              'Plus',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}
