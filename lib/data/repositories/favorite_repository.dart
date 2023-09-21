import 'package:nike_shoe_store/data/models/product.dart';
import 'package:nike_shoe_store/domain/repositories/favorite_repository.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  @override
  Future<void> addProductToFavorite(String userId, String productId) {
    // TODO: implement addProductToFavorite
    throw UnimplementedError();
  }

  @override
  Future<List<ProductModel>> getProducts(String userId) {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

  @override
  Future<void> removeProductFromFavorite(String userId, String productId) {
    // TODO: implement removeProductFromFavorite
    throw UnimplementedError();
  }

}