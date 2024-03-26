import 'package:bisku/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
  });
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColr,
      validator: (data) {
        if (data!.isEmpty) {
          return 'This feild must be not empty';
        }
        return ''; // lock hereeeeeeeeeeeeeeeeeeeeeee
      },
      style: const TextStyle(
        color: Color.fromARGB(
          255,
          0,
          0,
          0,
        ),
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffEDF3EE),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 175, 175, 175),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(width: 0, color: Colors.white),
        ),
      ),
    );
  }
}
