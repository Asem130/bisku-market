class ProductModel {
  final String name;
  final String description;
  final double price;
  final String image;
  final String category;
  final String kilo = '1 kg';

  ProductModel(
      {required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.category});
  factory ProductModel.fromJson(json) {
    return ProductModel(
        name: json['name'],
        description: json['description'],
        price: json['price'],
        image: json['pictureUrl'],
        category: json['category']);
  }
}
