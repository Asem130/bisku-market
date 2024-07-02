class SearchModel {
  final String name;
  final String image;
  final double price;
  final String discroption;
  SearchModel(
      {required this.discroption,
      required this.name,
      required this.image,
      required this.price});
  factory SearchModel.fromJson(json) {
    return SearchModel(
        discroption: json['description'],
        name: json['name'],
        image: json['pictureUrl'],
        price: json['price']);
  }
}
