import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShowAllCategories extends StatelessWidget {
  const ShowAllCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Categories'),
        centerTitle: true,
      ),
      body: const ShowAllCategoriesBody(),
    );
  }
}

class ShowAllCategoriesBody extends StatelessWidget {
  const ShowAllCategoriesBody({
    super.key,
  });
  final List<String> title = const [
    'Fruit and Veg',
    'Bakery',
    'Milk',
    'Coffee and Tea',
    'Snacks&Chocolate',
    'Condiment',
    'Canned and Jarred',
    'Meet and Seafood',
    'Deli',
    'IceCreem',
  ];
  final List<String> categoryImages = const [
    'https://s3-alpha-sig.figma.com/img/f432/e069/6ee54cd72c0026a64e8f056942faf88a?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FbeV0cfo1yhcy2blGZRv6yLzylarlQ0xiSGzq8DO5d8D-r9zX0FVKpSeVofDn7xp9Huko1tYPDdGwDUN2oemAMx9UHcnmIJp-eCuMaNJC928kjxPOAB2Z4SSd7vxO0wNdF7Yhdq-YK9ZyCuYUbLsPErsDtAcnLIWa1yzJqVX09yhTUK~gnH0NpX7NkukhYrUpN17u2Kr4fsfe-hYX6JpQ3w1F7VkBuISQnLY4It5L1VOpHUyWrsvl0wGOTdBNmooh7BxaDuKGN4eX7Bv4jh0KixRYhZpWdXLPW6IMOHlj6FGpT479AvzrGzUwGy7qJLGlCt5-guwEoELegrb9FgO8w__',
    'https://s3-alpha-sig.figma.com/img/208b/9983/d84734a538057238abda7857bec8f9d5?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iN459-cgPPUUmi4GJOVTqesG4rgTk2mCCcvTdOvwNXuT6BuVBpbI46L5eqiUOECZkBUMacUQRY506RnTIPtumXqRYBGCI4K0-wNa1AR0vPnhBp6gQx~qdOyIksKsi3XS8TbNNUj0XBvwie4Aa8qocGbTUd83zCQN3rf1byYjQS8BdgmTRrhXWNlPpM6dSVDa1d2FmUrMgxFcPK5C9~sxhxbGtdxkLc3Y9OIgdkFJSF-EiYfYK08qhmpUh7HNn0LHnBBMb9oel1fU9A72GC5813124lZu3f1cFflmO2zVU587YzyyHo1NCTFk1VWGiAql20DZ6nw2B2DK9904geQn4A__',
    'https://s3-alpha-sig.figma.com/img/b3fd/4fc3/bc5ef9b2a869179721f7bb0076ae6600?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=IHazHFoAaEBXh5YmBajm2eXkUNEWimWM0qaFXoe6GSgbEzcheOxeuMJwYVbJL0e3bxnXnV224JPKopnOl7Iq8G7877ZNGC8E1aRg6RHUmoyw0GSI2BEpRmoTwCx5f8xdQKXzMR-Jyr~A4NNQJOmn1MSeuzduwziStHW4YhVsUU5RC1qnr850ghSJe5F6Ei6pqWyPaR882PpdK2-ASqpGL81~PcgelQA4Mj2Ctb0fpOCneQ-QA63u-Z4dzN6j3La7xb~ckrA9-feDTi91EoSawNKCxh1JXM3USgnO1QferlXNMIbncrLFYpVXensllFiDk0MW-aftCT~xTmNiLlRw~A__',
    'https://img.freepik.com/premium-photo/international-coffee-day-coffee-effect-coffee-bean-realistic-splash-coffee-background-whitec_790893-292.jpg?w=1380',
    'https://img.freepik.com/free-photo/sweet-chocolate_144627-17555.jpg?t=st=1719513865~exp=1719517465~hmac=d346a6fbc3634859af7c8dd40d4a7fcfe469be24fafcb48276c43ce04dd2fce9&w=826',
    'https://img.freepik.com/free-photo/corn-chips-triangular-shape-levitate-white-background_485709-62.jpg?t=st=1719512818~exp=1719516418~hmac=4e7dfedfe6baba28ca699dd7f85ecb1c4ba28060bdda05fb277eae9910d64ee6&w=740',
    'https://img.freepik.com/free-vector/colored-realistic-spices-vegetables-composition-with-fresh-vegetables-flavorings-dishes-vector-illustration_1284-18016.jpg?t=st=1719513637~exp=1719517237~hmac=eac0228d6c54ee4c692c5d839563cc131a0f58c163382656cd34744421c20ce2&w=740',
    'https://img.freepik.com/free-photo/raw-pork-meat-isolated_1203-2641.jpg?t=st=1719523542~exp=1719527142~hmac=f20eef8fcb5c58fc4117b62d0b9b758298e6d440562490a98f53a68c6106f27d&w=1380',
    'https://img.freepik.com/premium-photo/cold-smoked-meat-plate-with-pork-chops-prosciutto-salami-bread-sticks_220507-2438.jpg?w=740',
    'https://img.freepik.com/premium-photo/chocolate-ice-cream-bowl-isolated-white-background_759707-8136.jpg?w=740'
  ];
  final List<String> menueName = const [
    'Fruit and Veg',
    'Bakery',
    'Milk',
    'Coffee and Tea',
    'Snacks&Chocolate',
    'Condiment',
    'Canned and Jarred',
    'Meet and Seafood',
    'Deli',
    'IceCreem',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          shrinkWrap: true,
          clipBehavior: Clip.hardEdge,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                context.push(AppRouter.kCategoryMenueItems, extra: {
                  "names": menueName[index],
                  "images": categoryImages[index],
                  "title": title[index]
                });
              },
              child: CategoryItem(
                name: menueName[index],
                image: categoryImages[index],
              ),
            );
          }),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.name, required this.image});
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(12),
        height: 160,
        width: MediaQuery.of(context).size.width / 3.2,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text(
              name,
              style: Styles.textStyle16.copyWith(),
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(children: [
              Image.network(
                image,
                width: 70,
                height: 55,
              )
            ]),
          ],
        ),
      ),
    );
  }
}
