import 'package:bisku/features/shop/data/models/shops/shop_model.dart';

abstract class HomeState {}

final class HomeInitialState extends HomeState {}

final class HomeLoadingState extends HomeState {}

final class HomeSuccsessState extends HomeState {
  final List<ShopModel> shops;

  HomeSuccsessState(this.shops);
}

final class HomeFailureState extends HomeState {
  final String errorMessage;

  HomeFailureState({required this.errorMessage});
}
