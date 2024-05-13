import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch(
      {super.key, required this.hintText, this.onChanged, this.onSubmitted});
  final String hintText;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 235, 235),
          borderRadius: BorderRadius.circular(16)),
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: IntrinsicWidth(
          child: TextField(
            onChanged: onChanged,
            onSubmitted: onSubmitted,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: const Icon(
                Icons.search,
                size: 22,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
