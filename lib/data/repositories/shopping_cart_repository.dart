import 'package:nike_shoe_store/data/data_sources/supabase_datasource.dart';
import 'package:nike_shoe_store/data/models/model.dart';
import 'package:nike_shoe_store/domain/repositories/shopping_cart_repository.dart';

class ShoppingCartRepositoryImpl extends ShoppingCartRepository {
  final SupabaseApi _supabaseApi;

  ShoppingCartRepositoryImpl(this._supabaseApi);

  @override
  Future<List<ShoppingCartModel>> getProducts(String userId) async {
    return await _supabaseApi.getCartShoes(userId);
  }

  @override
  void incrementProductCount(
      {required String userId, required String productId, required int count}) {
    _supabaseApi.updateShoeCountInCart(userId, productId, count);
  }

  @override
  void decrementProductCount(
      {required String userId, required String productId, required int count}) {
    _supabaseApi.updateShoeCountInCart(userId, productId, count);
  }

  @override
  void removeProduct(String userId, String productId) {
    _supabaseApi.removeShoeFromCart(userId, productId);
  }

  @override
  void clear() {
    _supabaseApi.clearCart();
  }
}
