import 'package:nike_shoe_store/domain/entities/shoe_item.dart';

abstract class FavoriteRepository {
  Future<List<ShoeItemEntity>> getProducts(String userId);
  void removeProductFromFavorite(String userId, String productId);
}
