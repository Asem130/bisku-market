import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/constants.dart';
import 'package:bisku/features/home/persentaion/manger/home_cubit/home_cubit.dart';
import 'package:bisku/features/home/persentaion/manger/home_cubit/home_state.dart';
import 'package:bisku/features/home/persentaion/views/widgets/shop_list_view_item.dart';
import 'package:bisku/features/shop/data/models/shops/shop_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ShopsListView extends StatefulWidget {
  const ShopsListView({super.key});

  @override
  State<ShopsListView> createState() => _ShopsListViewState();
}

class _ShopsListViewState extends State<ShopsListView> {
  @override
  void initState() {
    BlocProvider.of<HomeCubit>(context).getAllSuperMarkets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<ShopModel> shops = [];
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeLoadingState) {
          print(' loading ...');
        } else if (state is HomeFailureState) {
          print(state.errorMessage);
        } else if (state is HomeSuccsessState) {
          shops = BlocProvider.of<HomeCubit>(context).shops;

          print('sucsess ...');
        } else {
          print('sssssssssssssssssssssssssssssssssdsad');
        }
      },
      child: SizedBox(
        height: 80,
        child: ListView.builder(
          itemBuilder: (context, index) {
            print(index);
            return Padding(
              padding: const EdgeInsets.only(right: 6),
              child: GestureDetector(
                onTap: () {
                  context.push(
                    AppRouter.kShopHomeView,
                    extra: {
                      'names': kShopsnames[index],
                      'images': kShopsImages[index],
                      'time': kShopstime[index]
                    },
                  );
                },
                child: ShopsListViewItem(
                  image: kShopsImages[index],
                ),
              ),
            );
          },
          itemCount: kShopsImages.length - 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
