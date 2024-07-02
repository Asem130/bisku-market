class RegisterModel {
  RegisterModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.passWord,
  });
  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  String passWord;
  factory RegisterModel.from(json) {
    return RegisterModel(
        firstName: json['firstName'],
        lastName: json['displayName'],
        email: json['email'],
        phoneNumber: json['phoneNumber'],
        passWord: json['passWord']);
  }
}
