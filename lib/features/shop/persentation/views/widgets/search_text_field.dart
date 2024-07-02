import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShopSearchTextFormField extends StatefulWidget {
  const ShopSearchTextFormField({super.key});

  @override
  State<ShopSearchTextFormField> createState() =>
      _DestinationTextFormFieldState();
}

class _DestinationTextFormFieldState extends State<ShopSearchTextFormField> {
  
  TextEditingController controller = TextEditingController();
  void Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {
            controller.clear();
          },
          icon: const Icon(
            Icons.clear_sharp,
          ),
        ),
        prefixIcon: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: kPrimaryColor),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: kPrimaryColor),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      controller: controller,
      onFieldSubmitted: (value) {
        setState(() {
          for (int i = 0; i < kShopsnames.length; i++) {
            if (kShopsnames[i] == value) {
              kResultList.add(kShopsnames[i]);
            }
          }
        });
      },
      style: const TextStyle(
        color: Colors.black,
      ),
    );
  }
}
