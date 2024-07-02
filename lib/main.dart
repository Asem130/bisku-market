import 'package:bisku/core/utils/api_services.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/features/auth/data/repos/login_repository/login_repo_impl.dart';
import 'package:bisku/features/auth/data/repos/register_repository/register_repo_imp.dart';
import 'package:bisku/features/auth/presentaion/manger/login_cubit/login_cubit.dart';
import 'package:bisku/features/auth/presentaion/manger/register_cubit/register_cubit.dart';
import 'package:bisku/features/home/data/repos/home_repo_imp/home_repo_imp.dart';
import 'package:bisku/features/home/persentaion/manger/home_cubit/home_cubit.dart';
import 'package:bisku/features/shop/persentation/manger/basket_cubit/basket_cubit.dart';
import 'package:bisku/features/shop/persentation/manger/product/product_cubit.dart';
import 'package:bisku/features/shop/persentation/manger/search/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Api().getprooo();
  runApp(const Bisku());
}

class Bisku extends StatelessWidget {
  const Bisku({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BasketCubit()),
        BlocProvider(create: (context) => ProductCubit()..getallproductes()),
        BlocProvider(
          create: (context) => RegisterCubit(RegisterRepoImplementation()),
        ),
        BlocProvider(
          create: (context) => LoginCubit(LoginRepoImplementation()),
        ),
        BlocProvider(
          create: (context) => HomeCubit(HomeRepoImplementaion()),
          
        ),
         BlocProvider(
          create: (context) => SearchCubit(),
        ),

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
