import 'package:bisku/features/shop/data/models/search/search.dart';

abstract class SearchStates {}

final class SearchInitial extends SearchStates {}

final class SearchLoading extends SearchStates {}

final class SearchSuccsess extends SearchStates {
  final List<SearchModel> searchProduct;

  SearchSuccsess({required this.searchProduct});
}

final class SearchFailre extends SearchStates {
  final String errMessage;

  SearchFailre({required this.errMessage});
}
