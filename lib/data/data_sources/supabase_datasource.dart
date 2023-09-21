import 'package:nike_shoe_store/data/models/model.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

class SupabaseApi {
  static final SupabaseApi _singleton = SupabaseApi._internal();
  factory SupabaseApi() => _singleton;

  SupabaseApi._internal();

  final supabase = Supabase.instance.client;

  Future<void> signInUsingToken({
    required Provider provider,
    required String userIdToken,
    String? userAccessToken,
  }) async {
    await supabase.auth.signInWithIdToken(
        provider: provider, idToken: userIdToken, accessToken: userAccessToken);
  }

  Future<void> signOut() async {
    await supabase.auth.signOut();
  }

  Future<String?> currentUserId() async {
    final user = supabase.auth.currentUser;
    return user?.id;
  }

  Future<String?> currentUserEmail() async {
    final user = supabase.auth.currentUser;
    return user?.email;
  }

  Future<List<ProductModel>> getAllShoes() {
    return supabase.from('shoes').select().then((value) {
      final data = value.data as List;
      return data.map((e) => ProductModel.fromJson(e)).toList();
    });
  }

  Future<ProductModel> getShoe(String id) {
    return supabase.from('shoes').select("*").eq("id", id).then((value) {
      final data = value.data;
      return ProductModel.fromJson(data);
    });
  }

  Future<List<FavoriteModel>> getFavoriteShoes(String userId) {
    return supabase.from('favorite').select("shoe_id").then((value) {
      final data = value.data as List;
      return data.map((e) => FavoriteModel.fromJson(e)).toList();
    });
  }

  Future<List<ShoppingCartModel>> getCartShoes(String userId) {
    return supabase
        .from('shopping_cart')
        .select("shoe_id, item_count")
        .then((value) {
      final data = value.data as List;
      return data.map((e) => ShoppingCartModel.fromJson(e)).toList();
    });
  }

  void addShoeToFavorite(String userId, String shoeId) async {
    await supabase.from('favorite').insert([
      {'user_id': userId, 'shoe_id': shoeId}
    ]).then((value) {
      print(value);
    });
  }

  void addShoeToCart(String userId, String shoeId) async {
    await supabase.from('shopping_cart').insert([
      {'user_id': userId, 'shoe_id': shoeId, 'item_count': 1}
    ]);
  }

  void removeShoeFromFavorite(String userId, String shoeId) async {
    await supabase
        .from('favorite')
        .delete()
        .eq('user_id', userId)
        .eq('shoe_id', shoeId)
        .then((value) {
      print(value);
    });
  }

  void removeShoeFromCart(String userId, String shoeId) async {
    await supabase
        .from('shopping_cart')
        .delete()
        .eq('user_id', userId)
        .eq('shoe_id', shoeId)
        .then((value) {
      print(value);
    });
  }

  void updateShoeCountInCart(String userId, String shoeId, int count) async {
    await supabase
        .from('shopping_cart')
        .update({'item_count': count})
        .eq('user_id', userId)
        .eq('shoe_id', shoeId)
        .then((value) {
          print(value);
        });
  }

  void clearCart() async {
    return await supabase.from('shopping_cart').delete().then((value) {
      print(value);
    });
  }
}
