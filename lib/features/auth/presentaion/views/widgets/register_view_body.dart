import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/core/widgets/custom_text_button.dart';
import 'package:bisku/core/widgets/custom_text_field.dart';
import 'package:bisku/features/auth/presentaion/views/widgets/register_background.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

class RegisterModel {
  RegisterModel(this.body);
  final Widget body;
}

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();

    return Stack(
      children: [
        const RegisterViewBackground(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Register',
                  style: Styles.textStyle40
                      .copyWith(color: kPrimaryColor, fontFamily: 'Judson'),
                ),
                Text(
                  'Create a new account',
                  style: Styles.textStyle24
                      .copyWith(color: Colors.grey, fontFamily: 'Acme'),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: 'Full name',
                  prefixIcon: const Icon(
                    FontAwesomeIcons.user,
                    color: kPrimaryColor,
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: 'Email',
                  prefixIcon: const Icon(FontAwesomeIcons.envelope,
                      color: kPrimaryColor),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: 'passward',
                  suffixIcon:
                      const Icon(Icons.remove_red_eye, color: kPrimaryColor),
                  prefixIcon: const Icon(Icons.lock, color: kPrimaryColor),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextButton(
                  text: 'Sign Up',
                  onTap: ()  {
                  }
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Register',
          style: Styles.textStyle40
              .copyWith(color: kPrimaryColor, fontFamily: 'Judson'),
        ),
        Text(
          'Create a new account',
          style: Styles.textStyle24
              .copyWith(color: Colors.grey, fontFamily: 'Acme'),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          hintText: 'Full name',
          prefixIcon: const Icon(
            FontAwesomeIcons.user,
            color: kPrimaryColor,
          ),
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          hintText: 'Email',
          prefixIcon:
              const Icon(FontAwesomeIcons.envelope, color: kPrimaryColor),
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          hintText: 'passward',
          suffixIcon: const Icon(Icons.remove_red_eye, color: kPrimaryColor),
          prefixIcon: const Icon(Icons.lock, color: kPrimaryColor),
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextButton(
          text: 'Sign Up',
          onTap: () {
            GoRouter.of(context).go(AppRouter.kLoginView);
          },
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
