import 'package:nike_shoe_store/data/models/product.dart';
import 'package:nike_shoe_store/domain/repositories/shopping_cart_repository.dart';

class ShoppingCartRepositoryImpl extends ShoppingCartRepository {
  @override
  Future<void> clear() {
    // TODO: implement clear
    throw UnimplementedError();
  }

  @override
  Future<void> decrementProductCount({required String userId, required String productId, int count = -1}) {
    // TODO: implement decrementProductCount
    throw UnimplementedError();
  }

  @override
  Future<List<ProductModel>> getProducts(String userId) {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

  @override
  Future<void> incrementProductCount({required String userId, required String productId, int count = 1}) {
    // TODO: implement incrementProductCount
    throw UnimplementedError();
  }

  @override
  Future<void> removeProduct(String userId, String productId) {
    // TODO: implement removeProduct
    throw UnimplementedError();
  }

}