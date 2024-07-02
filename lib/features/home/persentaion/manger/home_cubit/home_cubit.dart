import 'package:bisku/features/home/data/repos/home_repo/home_repo.dart';
import 'package:bisku/features/home/persentaion/manger/home_cubit/home_state.dart';
import 'package:bisku/features/shop/data/models/shops/shop_model.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitialState());
  final HomeRepo homeRepo;
  List<ShopModel> shops = [];
  Future<void> getAllSuperMarkets() async {
    emit(HomeLoadingState());
    try {
      shops = await homeRepo.fetchAllSuperMarket();
      print (shops[0]);
      emit(HomeSuccsessState(shops));
    } on Exception catch (e) {
      print('ererirr in home cubit ');
    }
  }
}
