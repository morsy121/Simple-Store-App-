import '../helper/api.dart';
import '../model/product_mode.dart';

class UpdateProductServices {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required int id,
      required String category}) async {
    //print("update");
    print('product id  = $id');
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: ({
        'title': title,
        'price': price,
        'description': desc,
        'image': image,
        'category': category,
      }),
    );
    return ProductModel.fromJson(data);
  }
}
