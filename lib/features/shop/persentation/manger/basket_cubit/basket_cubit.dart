import 'package:bisku/features/shop/data/models/basket_item/basket_item_model.dart';
import 'package:bisku/features/shop/persentation/manger/basket_cubit/basket_state.dart';
import 'package:bloc/bloc.dart';

class BasketCubit extends Cubit<BaseketStates> {
  BasketCubit() : super(BasketInitial());

  List<BasketItemModel> basketItems = [];

  void addItemToBasket(
      {required String image,
      required String shopName,
      required String name,
      required String kilo,
      required String price}) {
    basketItems.add(BasketItemModel(
        shopName: shopName,
        image: image,
        name: name,
        kilo: kilo,
        price: price));
    emit(BasketSuccsess());
  }

  void deleteItemFromBasket(BasketItemModel model) {
    basketItems.remove(model);
    emit(BasketSuccsess());
  }
}
