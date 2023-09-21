import 'package:nike_shoe_store/data/data_sources/supabase_datasource.dart';
import 'package:nike_shoe_store/data/models/model.dart';
import 'package:nike_shoe_store/domain/repositories/favorite_repository.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final SupabaseApi _supabaseApi;

  FavoriteRepositoryImpl(this._supabaseApi);

  @override
  Future<List<ProductModel>> getProducts(String userId) async {
  try {
    final List<FavoriteModel> favoriteProductsId =
        await _supabaseApi.getFavoriteShoes(userId);

    List<ProductModel> favoriteProducts = [];
    for (var element in favoriteProductsId) {
      final product = await _supabaseApi.getShoe(element.productId);
      favoriteProducts.add(product);
    }
    return favoriteProducts;
  } catch (e) {
    print(e);
    return []; // Return an empty list in case of an error
  }
}

  @override
  void removeProductFromFavorite(String userId, String productId) {
    _supabaseApi.removeShoeFromFavorite(userId, productId);
  }
}
