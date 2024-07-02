import 'package:bisku/core/utils/api_services.dart';
import 'package:bisku/features/home/data/repos/home_repo/home_repo.dart';
import 'package:bisku/features/shop/data/models/shops/shop_model.dart';

class HomeRepoImplementaion implements HomeRepo {
  Api api = Api();

  @override
  Future<List<ShopModel>> fetchAllSuperMarket() async {
    var data = await api.getAllSuperMarkets(endPoint: 'Supermarket');

    List<ShopModel> shops = [];
    for (var item in data) {
      shops.add(ShopModel.fromJson(item));
    }

    return shops;
  }
}
