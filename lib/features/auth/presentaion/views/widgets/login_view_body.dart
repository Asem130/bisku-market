import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/core/widgets/custom_text_button.dart';
import 'package:bisku/core/widgets/custom_text_field.dart';
import 'package:bisku/features/auth/presentaion/manger/login_cubit/login_cubit.dart';
import 'package:bisku/features/auth/presentaion/manger/login_cubit/login_state.dart';
import 'package:bisku/features/auth/presentaion/views/widgets/custom_login_view_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:widget_mask/widget_mask.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;
  bool obsecure = true;
  String? email;
  String? passward;
  Widget icon = const Icon(Icons.visibility_off);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isLoading = true;
        }
        if (state is LoginSuccsess) {
          isLoading = false;
          GoRouter.of(context).push(AppRouter.kHomeView);
        }
      },
      child: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Form(
          key: formKey,
          child: Stack(
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
                  body: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcom back',
                          style: Styles.textStyle40.copyWith(
                              fontSize: 32,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Judson'),
                        ),
                        Text(
                          'Login with your account',
                          style: Styles.textStyle24.copyWith(
                              fontSize: 16,
                              color: Colors.grey,
                              fontFamily: 'Acme'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          hintText: 'Email',
                          prefixIcon: const Icon(FontAwesomeIcons.envelope,
                              color: kPrimaryColor),
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          hintText: 'passward',
                          obsecuer: obsecure,
                          suffixIcon: IconButton(
                            icon: icon,
                            onPressed: () {
                              setState(() {});
                              if (obsecure == true) {
                                obsecure == false;
                                icon = const Icon(Icons.visibility);
                              } else if (obsecure = false) {
                                obsecure = true;
                                icon = const Icon(Icons.visibility_off);
                              }
                              setState(() {});
                            },
                          ),
                          prefixIcon:
                              const Icon(Icons.lock, color: kPrimaryColor),
                          onChanged: (value) {
                            passward = value;
                          },
                        ),
                        const Row(
                          children: [
                            Spacer(),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextButton(
                          text: 'Sign in',
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              BlocProvider.of<LoginCubit>(context)
                                  .postUserLogin(
                                email: email!,
                                password: passward!,
                              );
                            } else {
                              autovalidateMode = AutovalidateMode.always;
                              setState(() {});
                            }
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
                                GoRouter.of(context)
                                    .push(AppRouter.kRegisterView);
                              },
                              child: Text(
                                'Sign Up',
                                style: Styles.textStyle24.copyWith(
                                    color: kPrimaryColor, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
