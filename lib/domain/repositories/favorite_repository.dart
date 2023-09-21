import 'package:nike_shoe_store/domain/entities/product.dart';

abstract class FavoriteRepository {
  Future<List<ProductEntity>> getProducts(String userId);
  void removeProductFromFavorite(String userId, String productId);
}
