import 'package:nike_shoe_store/domain/entities/product.dart';

abstract class ShoppingCartRepository {
  Future<void> clear();
  Future<List<ProductEntity>> getProducts(String userId);
  Future<void> incrementProductCount(
      {required String userId, required String productId, int count = 1});
  Future<void> decrementProductCount(
      {required String userId, required String productId, int count = -1});
  Future<void> removeProduct(String userId, String productId);
}
