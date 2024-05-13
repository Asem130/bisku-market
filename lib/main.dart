import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/features/auth/data/repos/register_repo_imp.dart';
import 'package:bisku/features/auth/presentaion/manger/register_cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  runApp(const Bisku());
}

class Bisku extends StatelessWidget {
  const Bisku({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterCubit(RegisterRepoImplementation()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
