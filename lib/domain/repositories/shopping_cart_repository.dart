import 'package:nike_shoe_store/data/models/model.dart';

abstract class ShoppingCartRepository {
  void clear();
  Future<List<ShoppingCartModel>> getProducts(String userId);
  void updateProductCount(
      {required String userId, required String productId, required int count});
  void removeProduct(String userId, String productId);
}
