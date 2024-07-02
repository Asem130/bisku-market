import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/core/widgets/custom_text_button.dart';
import 'package:bisku/core/widgets/custom_text_field.dart';
import 'package:bisku/features/auth/presentaion/manger/register_cubit/register_cubit.dart';
import 'package:bisku/features/auth/presentaion/manger/register_cubit/register_states.dart';
import 'package:bisku/features/auth/presentaion/views/widgets/register_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  @override
  void initState() {
    super.initState();
  }

  bool isLoading = false;

  String? firstName;
  String? lastName;
  String? email;
  String? passward;
  String? phoneNumber;

  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterStates>(
      listener: (context, state) {
        if (state is RegisterLoadingState) {
          isLoading = true;
        }
        if (state is RegisterSuccsessState) {
          isLoading = false;
          GoRouter.of(context).push(AppRouter.kLoginView);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Stack(
            children: [
              const RegisterViewBackground(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Form(
                  key: formKey,
                  autovalidateMode: autovalidateMode,
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 150,
                          ),
                          Text(
                            'Register',
                            style: Styles.textStyle40.copyWith(
                                color: kPrimaryColor, fontFamily: 'Judson'),
                          ),
                          Text(
                            'Create a new account',
                            style: Styles.textStyle24.copyWith(
                                color: Colors.grey, fontFamily: 'Acme'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            hintText: 'First name',
                            prefixIcon: const Icon(
                              FontAwesomeIcons.user,
                              color: kPrimaryColor,
                            ),
                            onChanged: (value) {
                              firstName = value;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            hintText: 'Last name',
                            prefixIcon: const Icon(
                              FontAwesomeIcons.user,
                              color: kPrimaryColor,
                            ),
                            onChanged: (value) {
                              lastName = value;
                            },
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
                            inputType: TextInputType.phone,
                            hintText: 'Phone number',
                            prefixIcon: const Icon(FontAwesomeIcons.envelope,
                                color: kPrimaryColor),
                            onChanged: (value) {
                              phoneNumber = value;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            obsecuer: true,
                            hintText: 'passward',
                            suffixIcon: const Icon(Icons.remove_red_eye,
                                color: kPrimaryColor),
                            prefixIcon:
                                const Icon(Icons.lock, color: kPrimaryColor),
                            onChanged: (value) {
                              passward = value;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextButton(
                              text: 'Sign Up',
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  BlocProvider.of<RegisterCubit>(context)
                                      .postUserRegister(
                                          email: email!,
                                          password: passward!,
                                          firstName: firstName!,
                                          lastName: lastName!,
                                          phoneNumber: phoneNumber!);
                                } else {
                                  autovalidateMode = AutovalidateMode.always;
                                  setState(() {});
                                }
                              }),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Text(
                                'Already have an account?',
                                style: Styles.textStyle16,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              TextButton(
                                  onPressed: () {
                                    GoRouter.of(context)
                                        .go(AppRouter.kLoginView);
                                  },
                                  child: Text(
                                    'Sign in',
                                    style: Styles.textStyle16
                                        .copyWith(color: kPrimaryColor),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}
