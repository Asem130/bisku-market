import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/core/widgets/custom_text_button.dart';
import 'package:bisku/core/widgets/custom_text_field.dart';
import 'package:bisku/features/auth/presentaion/views/widgets/custom_login_view_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_mask/widget_mask.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginViewBody(),
    );
  }
}

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        WidgetMask(
          blendMode: BlendMode.srcATop,
          childSaveLayer: true,
          mask: Image.asset(
              fit: BoxFit.cover,
              'assets/images/atoms-VHMvdS720Hc-unsplash.jpg'),
          child: CustomPaint(
            size: Size(width, (width / 1.7).toDouble()),
            painter: RPSCustomPainter(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: width / 1.7, left: 24, right: 24),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcom back',
                  style: Styles.textStyle40.copyWith(
                      fontSize: 32,
                      color: kPrimaryColr,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Judson'),
                ),
                Text(
                  'Login with your account',
                  style: Styles.textStyle24.copyWith(
                      fontSize: 16, color: Colors.grey, fontFamily: 'Acme'),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: 'Email',
                  prefixIcon: const Icon(FontAwesomeIcons.envelope,
                      color: kPrimaryColr),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: 'passward',
                  suffixIcon:
                      const Icon(Icons.remove_red_eye, color: kPrimaryColr),
                  prefixIcon: const Icon(Icons.lock, color: kPrimaryColr),
                  onChanged: (value) {},
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.circleCheck,
                        size: 16,
                      ),
                    ),
                    Text(
                      'Remember me',
                      style: Styles.textStyle24
                          .copyWith(fontSize: 12, color: Colors.grey),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget passward?',
                        style: Styles.textStyle24
                            .copyWith(color: kPrimaryColr, fontSize: 12),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextButton(
                  text: 'Sign in',
                  onTap: () {
                    GoRouter.of(context).go(AppRouter.kHomeView);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ?',
                      style: Styles.textStyle24
                          .copyWith(fontSize: 12, color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        
                      },
                      child: Text(
                        'Sign Up',
                        style: Styles.textStyle24
                            .copyWith(color: kPrimaryColr, fontSize: 12),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      splashColor: kPrimaryColr,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child:
                            Image.asset('assets/images/icons8-google-48.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    InkWell(
                      splashColor: kPrimaryColr,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child:
                            Image.asset('assets/images/icons8-facebook-48.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
