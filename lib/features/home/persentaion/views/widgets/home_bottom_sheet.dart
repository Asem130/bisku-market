import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class HomeButtomSheet extends StatefulWidget {
  const HomeButtomSheet({super.key});

  @override
  State<HomeButtomSheet> createState() => _HomeButtomSheetState();
}

class _HomeButtomSheetState extends State<HomeButtomSheet> {
  DateTime? _selectedDate;
  final fromatter = DateFormat.yMd();
  void _gshowDatePicker() async {
    final now = DateTime.now();
    final firstTime = DateTime(
      now.year,
      now.month,
      now.day,
    );
    final lastTime = DateTime(now.year + 1, now.month + 1, now.day + 1);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstTime,
      lastDate: lastTime,
    );

    setState(() {
      _selectedDate = pickedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Adresses',
                  style: Styles.textStyle24,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 12,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Sabry Abo Alm',
                      style: Styles.textStyle16,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 52,
          ),
          Container(
            color: const Color.fromARGB(255, 210, 209, 209),
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Delivery time',
                          style: Styles.textStyle16,
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Text(_selectedDate == null
                            ? 'No date selected'
                            : fromatter.format(_selectedDate!)),
                        IconButton(
                            onPressed: () {
                              _gshowDatePicker();
                            },
                            icon: const Icon(Icons.arrow_forward_ios)),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(24),
            child: CustomTextButton(
              text: 'Confirm',
              onTap: () {
                GoRouter.of(context).pop();
              },
            ),
          )
        ],
      ),
    );
  }
}
