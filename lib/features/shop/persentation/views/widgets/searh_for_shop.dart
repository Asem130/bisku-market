import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/features/shop/data/models/search/search.dart';
import 'package:bisku/features/shop/persentation/manger/search/search_cubit.dart';
import 'package:bisku/features/shop/persentation/manger/search/search_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchForShop extends StatefulWidget {
  const SearchForShop({
    super.key,
  });

  @override
  State<SearchForShop> createState() => _SearchForShopState();
}

class _SearchForShopState extends State<SearchForShop> {
  String? prouctName;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              TextFormField(
                controller: controller,
                cursorColor: kPrimaryColor,
                style: const TextStyle(
                  color: Color.fromARGB(
                    255,
                    0,
                    0,
                    0,
                  ),
                ),
                onChanged: (value) {
                  BlocProvider.of<SearchCubit>(context)
                      .getDestination(productName: value);
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffEDF3EE),
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'search for product',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 175, 175, 175),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(width: 0, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const DestinationResult(),
            ],
          ),
        ),
      ),
    );
  }
}

class DestinationResult extends StatelessWidget {
  const DestinationResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchStates>(builder: (context, state) {
      if (state is SearchLoading) {
        return const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
        );
      } else if (state is SearchSuccsess) {
        print('ppppppppppppppppppppppppppppppppppppppp');
        print(state.searchProduct);
        return Expanded(
          child: SearchListView(
            searchProduct: state.searchProduct,
          ),
        );
      } else if (state is SearchFailre) {
        return const Text('Error caused');
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}

class SearchListView extends StatelessWidget {
  const SearchListView({super.key, required this.searchProduct});
  final List<SearchModel> searchProduct;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            context.push(AppRouter.kProductDetails, extra: {
              "model": searchProduct[index],
            });
          },
          splashColor: kPrimaryColor.withOpacity(0.3),
          child: ProductSearchItem(
            searchLocation: searchProduct[index],
          ),
        ),
      ),
      itemCount: searchProduct.length,
    );
  }
}

class ProductSearchItem extends StatelessWidget {
  const ProductSearchItem({super.key, required this.searchLocation});
  final SearchModel searchLocation;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(16),
      child: Card(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              margin: EdgeInsets.zero,
              child: Image.network(
                height: 90,
                width: 90,
                searchLocation.image
                    .replaceAll('http://biskueapi.runasp.net/', ''),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    searchLocation.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle16,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    searchLocation.discroption,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
