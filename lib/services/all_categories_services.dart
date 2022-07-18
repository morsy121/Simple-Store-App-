import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:storeapp/helper/api.dart';

class AllCategoriesServices {
  //Service Two
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
