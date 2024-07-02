class BasketItemModel {
  final String image;
  final String name;
  final String kilo;
  final String price;
  final String shopName;

  BasketItemModel(
      {required this.image,
      required this.shopName,
      required this.name,
      required this.kilo,
      required this.price});
}
