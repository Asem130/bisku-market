import 'package:bisku/features/auth/presentaion/views/login_view.dart';
import 'package:bisku/features/auth/presentaion/views/register_view.dart';
import 'package:bisku/features/home/persentaion/views/home_view.dart';
import 'package:bisku/features/home/persentaion/views/widgets/basket_view.dart';
import 'package:bisku/features/onboarding/persentaion/views/get_location_view.dart';
import 'package:bisku/features/onboarding/persentaion/views/get_notified_view.dart';
import 'package:bisku/features/onboarding/persentaion/views/onboarding_view.dart';
import 'package:bisku/features/shop/persentation/views/category_menu_items_view.dart';
import 'package:bisku/features/shop/persentation/views/shop_home_view.dart';
import 'package:bisku/features/shop/persentation/views/shops_view.dart';
import 'package:bisku/features/shop/persentation/views/show_all_categories.dart';
import 'package:bisku/features/shop/persentation/views/widgets/product_detailes.dart';
import 'package:bisku/features/shop/persentation/views/widgets/searh_for_shop.dart';
import 'package:bisku/features/splash/presentaion/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static String kHomeView = '/HomeView';
  static String kRegisterView = '/RegisterView';
  static String kLoginView = '/LoginView';
  static String kShopView = '/ShopView';
  static String ksearch = '/Shopsearch';
  static String kGetNotifiedView = '/GetNotifiedView';
  static String kGetLocationView = '/GetLocationView';
  static String kOnBoardingView = '/OnBoardingView';
  static String kShopHomeView = '/ShopHomeView';
  static String kShowAllCategories = '/AllCategories';
  static String kCategoryMenueItems = '/CategoryMenueItems';
  static String kBasketView = '/BasketView';
  static String kProductDetails = '/productDeatails';

  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: kRegisterView,
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterView();
      },
    ),
    GoRoute(
      path: kLoginView,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginView();
      },
    ),
    GoRoute(
      path: kHomeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: kShopView,
      builder: (BuildContext context, GoRouterState state) {
        return const ShopsView();
      },
    ),
    GoRoute(
      path: kGetNotifiedView,
      builder: (BuildContext context, GoRouterState state) {
        return const GetNotifiedView();
      },
    ),
    GoRoute(
      path: kGetLocationView,
      builder: (BuildContext context, GoRouterState state) {
        return const GetLocationView();
      },
    ),
    GoRoute(
      path: kOnBoardingView,
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoaerdingView();
      },
    ),
    GoRoute(
      path: kShopHomeView,
      builder: (BuildContext context, GoRouterState state) {
        Map<String, dynamic> args = state.extra as Map<String, dynamic>;
        return ShopHomeView(
          name: args['names'],
          image: args['images'],
          time: args['time'],
        );
      },
    ),
    GoRoute(
      path: kShowAllCategories,
      builder: (BuildContext context, GoRouterState state) {
        return const ShowAllCategories();
      },
    ),
    GoRoute(
      path: kCategoryMenueItems,
      builder: (BuildContext context, GoRouterState state) {
        Map<String, dynamic> args = state.extra as Map<String, dynamic>;

        return CategoryMenueItems(
            shopName: 'Elgelany',
            name: args['names'],
            images: args['images'],
            title: args['images']);
      },
    ),
    GoRoute(
      path: ksearch,
      builder: (BuildContext context, GoRouterState state) {
        return const SearchForShop();
      },
    ),
    GoRoute(
      path: kBasketView,
      builder: (BuildContext context, GoRouterState state) {
        return const BasketView(
          shopName: 'Othem',
        );
      },
    ),
    GoRoute(
      path: kProductDetails,
      builder: (BuildContext context, GoRouterState state) {
        Map<String, dynamic> args = state.extra as Map<String, dynamic>;
        return ProductDetailes(
          model: args['model'],
        );
      },
    ),
  ]);
}
