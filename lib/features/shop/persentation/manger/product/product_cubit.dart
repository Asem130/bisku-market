import 'package:bisku/core/utils/api_services.dart';
import 'package:bisku/features/shop/data/models/product/product_model.dart';
import 'package:bisku/features/shop/persentation/manger/product/product_state.dart';
import 'package:bloc/bloc.dart';

class ProductCubit extends Cubit<ProductesState> {
  ProductCubit() : super(ProductesInitial());

  List<ProductModel> productes = [];
  void getallproductes() async {
    emit(ProductesLoading());
    try {
      productes = await Api().getprooo();
      emit(ProductesSuccsess());
    } on Exception catch (e) {
      emit(ProductesFailre(errMessage: 'productes cubit errer'));
    }
  }
}
