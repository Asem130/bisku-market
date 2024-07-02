import 'dart:convert';

import 'package:bisku/features/shop/data/models/product/product_model.dart';
import 'package:bisku/features/shop/data/models/search/search.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class Api {
  final Dio dio = Dio();
  final String _authBaseUrl = 'http://biskueapi.runasp.net/api/Account/';
  final String baseUrl = 'http://biskueapi.runasp.net/api/';

  Future<Response> postRegisterData(
      {required String endPoint,
      required String firstName,
      required String lastName,
      required String email,
      required String password,
      required String phone}) async {
    Map data = {
      'displayName': '$firstName $lastName',
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phoneNumber': phone,
      'password': password
    };
    return await dio.post('$_authBaseUrl$endPoint',
        data: data,
        options: Options(headers: {'Content-Type': 'application/json'}));
  }

  Future<void> postLoginData({
    required String endPoint,
    required String email,
    required String password,
  }) async {
    Map data = {'email': email, 'password': password};
    Response response = await dio.post('$_authBaseUrl$endPoint',
        data: data,
        options: Options(headers: {'Content-Type': 'application/json'}));
    if (response.statusCode == 200) {
      print(response.data);
    } else if (response.statusCode == 401) {
    } else if (response.statusCode == 400) {
      print('edsadrr');
    } else {
      print('errror');
    }
  }

  Future<List<dynamic>> getAllSuperMarkets({required String endPoint}) async {
    Response response = await dio.get('$baseUrl$endPoint');

    return (response.data);
  }

  Future<List<ProductModel>> getAllProductes() async {
    Uri url = Uri.parse('http://biskueapi.runasp.net/api/Products/Products');
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);

    List<ProductModel> productes = [];

    for (var item in data) {
      productes.add(ProductModel.fromJson(item));
    }

    return productes;
  }

  Future<List<ProductModel>> getprooo() async {
    Response response =
        await dio.get('http://biskueapi.runasp.net/api/Products/Products');
    var data = response.data;
    List<ProductModel> productes = [];
    for (var item in data) {
      productes.add(ProductModel.fromJson(item));
    }
    print(productes);
    return productes;
  }

  Future<List<SearchModel>> getSearch({required String productName}) async {
    http.Response response = await http.get(
      Uri.parse(
        'http://biskueapi.runasp.net/api/Products?Sort=priceAsc&Search=$productName',
      ),
    );
    var data = jsonDecode(response.body);
    List<SearchModel> searchProduct = [];
    for (var model in data['data']) {
      searchProduct.add(SearchModel.fromJson(model));
    }

    return searchProduct;
  }
}
