import 'package:bisku/features/shop/data/models/shops/shop_model.dart';

abstract class HomeRepo {
  Future<List<ShopModel>> fetchAllSuperMarket();
}
