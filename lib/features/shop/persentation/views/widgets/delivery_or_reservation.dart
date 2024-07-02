import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeliverOrReserv extends StatefulWidget {
  const DeliverOrReserv({super.key});

  @override
  State<DeliverOrReserv> createState() => _DeliverOrReservState();
}

class _DeliverOrReservState extends State<DeliverOrReserv> {
  bool isDelivery = false;

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
          GestureDetector(
            onTap: () {
              setState(() {
                isDelivery = true;
              });
            },
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width / 2 - 24,
              decoration: BoxDecoration(
                color: isDelivery
                    ? const Color.fromARGB(255, 60, 175, 70)
                    : const Color.fromARGB(255, 223, 222, 222),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: Text('Delivery',
                    style: Styles.textStyle16.copyWith(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isDelivery = false;
              });
            },
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width / 2 - 24,
              decoration: BoxDecoration(
                color: isDelivery
                    ? const Color.fromARGB(255, 223, 222, 222)
                    : const Color.fromARGB(255, 60, 175, 70),
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
          ),
        ],
      ),
    );
  }
}
