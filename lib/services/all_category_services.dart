import 'dart:convert';

import 'package:storeapp/helper/api.dart';
import 'package:storeapp/model/product_mode.dart';
import 'package:http/http.dart' as http;

class CategoryServices {
  //Service Three
  Future<List<ProductModel>> getCategoriesProduct(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> productList = [];
    for (int i = 1; i <= data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}
