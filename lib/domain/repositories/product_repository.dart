import 'package:nike_shoe_store/domain/entities/product.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts();
  Future<ProductEntity> getProduct(int id);
  void addProductToCart(String userId, String productId);
  void addProductToFavorite(String userId, String productId);
  void removeProductFromCart(String userId, String productId);
  void removeProductFromFavorite(String userId, String productId);
}
