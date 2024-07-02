class ShopModel {
  String name;
  String phoneNumber;
  String email;
  String country;
  String city;
  String street;
  String pictureUrl;

  ShopModel({
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.country,
    required this.city,
    required this.street,
    required this.pictureUrl,
  });
  factory ShopModel.fromJson( json) {
    return ShopModel(
      name: json['name'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      country: json['country'],
      city: json['city'],
      street: json['street'],
      pictureUrl: json['pictureUrl'],
    );
  }
}
