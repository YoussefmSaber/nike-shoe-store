import 'package:nike_shoe_store/domain/entities/shoe_item.dart';

abstract class ProductRepository {
  Future<List<ShoeItemEntity>> getProducts();
  Future<ShoeItemEntity> getProduct(String id);
  Future<List<ShoeItemEntity>> getSpecialShoes(String state);
  void addProductToCart(String userId, String productId);
  void addProductToFavorite(String userId, String productId);
  void removeProductFromCart(String userId, String productId);
  void removeProductFromFavorite(String userId, String productId);
}
