import 'package:nike_shoe_store/domain/entities/product.dart';

abstract class FavoriteRepository {
  Future<List<ProductEntity>> getProducts(String userId);
  Future<void> addProductToFavorite(String userId, String productId);
  Future<void> removeProductFromFavorite(String userId, String productId);
}
