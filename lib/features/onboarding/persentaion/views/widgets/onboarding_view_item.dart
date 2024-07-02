import 'package:bisku/features/onboarding/persentaion/manger/models/onboarding_model.dart';
import 'package:flutter/material.dart';

class OnBoardingViewItem extends StatelessWidget {
  const OnBoardingViewItem({super.key, required this.model});
  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          model.image,
          height: height,
          width: width,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Judson',
                  fontSize: 48,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                model.supTitle,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
