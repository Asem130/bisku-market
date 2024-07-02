import 'package:bisku/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.inputType,  this.obsecuer = false,
  });
  final String hintText;
  final bool obsecuer ;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String) onChanged;
  final TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecuer,
      cursorColor: kPrimaryColor,
      validator: (data) {
        if (data!.isEmpty) {
          return 'This feild must be not empty';
        }
        
      },
      style: const TextStyle(
        color: Color.fromARGB(
          255,
          0,
          0,
          0,
        ),
      ),
      keyboardType: inputType,
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
