import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DeliverOrReserv extends StatelessWidget {
  const DeliverOrReserv({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 223, 222, 222),
          borderRadius: BorderRadius.circular(24)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width / 2-24,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 60, 175, 70),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Center(
              child: Text('Delivery',
                  style: Styles.textStyle16.copyWith(
                    color: const Color.fromARGB(255, 255, 254, 254),
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ),
          const Spacer(),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width / 2-24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Center(
              child: Text(
                'Reservation',
                style: Styles.textStyle16.copyWith(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
