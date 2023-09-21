import 'package:nike_shoe_store/domain/entities/product.dart';
import 'package:nike_shoe_store/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  void addProductToCart(String userId, String productId) {
    // TODO: implement addProductToCart
  }

  @override
  void addProductToFavorite(String userId, String productId) {
    // TODO: implement addProductToFavorite
  }

  @override
  Future<ProductEntity> getProduct(int id) {
    // TODO: implement getProduct
    throw UnimplementedError();
  }

  @override
  Future<List<ProductEntity>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

  @override
  void removeProductFromCart(String userId, String productId) {
    // TODO: implement removeProductFromCart
  }

  @override
  void removeProductFromFavorite(String userId, String productId) {
    // TODO: implement removeProductFromFavorite
  }

}