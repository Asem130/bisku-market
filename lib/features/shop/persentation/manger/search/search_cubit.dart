import 'package:bisku/core/utils/api_services.dart';
import 'package:bisku/features/shop/data/models/search/search.dart';
import 'package:bisku/features/shop/persentation/manger/search/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchStates> {
 SearchCubit() : super(SearchInitial());
  List<SearchModel> searchProduct = [];
  void getDestination({required String productName}) async {
    emit(SearchLoading());
    try {
      searchProduct = await Api().getSearch(productName: productName);
      emit(SearchSuccsess(searchProduct: searchProduct));
    } on Exception catch (e) {
      emit(
        SearchFailre(
          errMessage: e.toString(),
        ),
      );
      print('errrrrrror');
    }
  }
}
