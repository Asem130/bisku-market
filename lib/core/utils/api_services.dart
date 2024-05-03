import 'dart:convert';

import 'package:dio/dio.dart';

class Api{

  get()async{
    var headers = {
  'Content-Type': 'application/json'
};
var data = json.encode({
  "displayName": "Medo ALI",
  "firstName": "Medo",
  "lastName": "ALI",
  "email": "SDASssssssssssD@gmail.com",
  "phoneNumber": "76565757857578",
  "password": "Medo@11",
  "city": "fyoum",
  "country": "egpt",
  "street": "fon",
  "zipCode": "877"
});
var dio = Dio();
var response = await dio.request(
  'http://biskueapi.runasp.net/api/Account/register',
  options: Options(
    method: 'POST',
    headers: headers,
  ),
  data: data,
);

if (response.statusCode == 200) {
 
}
else {
  print(response.statusMessage);
}
  }
}