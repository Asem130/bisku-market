import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AuthWithSocialMedia extends StatelessWidget {
  const AuthWithSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Or continue with',
                style: Styles.textStyle24.copyWith(
                    fontFamily: 'Heebo',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              splashColor: kPrimaryColor,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset('assets/images/icons8-google-48.png'),
              ),
            ),
            const SizedBox(
              width: 60,
            ),
            InkWell(
              splashColor: kPrimaryColor,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset('assets/images/icons8-facebook-48.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
