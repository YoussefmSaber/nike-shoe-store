import 'package:nike_shoe_store/data/data_sources/supabase_datasource.dart';
import 'package:nike_shoe_store/data/models/model.dart';
import 'package:nike_shoe_store/domain/repositories/product_repository.dart';

// class ProductRepositoryImpl implements ProductRepository {
//   final SupabaseApi _supabaseApi;

//   ProductRepositoryImpl(this._supabaseApi);
//   @override
//   void addProductToCart(String userId, String productId) {
//     _supabaseApi.addShoeToCart(userId, productId);
//   }

//   @override
//   void addProductToFavorite(String userId, String productId) {
//     _supabaseApi.addShoeToFavorite(userId, productId);
//   }

//   @override
//   Future<ProductModel> getProduct(String id) async {
//     return await _supabaseApi.getShoe(id.toString());
//   }

//   @override
//   Future<List<ProductModel>> getProducts() async {
//     return await _supabaseApi.getAllShoes();
//   }

//   @override
//   void removeProductFromCart(String userId, String productId) {
//     _supabaseApi.removeShoeFromCart(userId, productId);
//   }

//   @override
//   void removeProductFromFavorite(String userId, String productId) {
//     _supabaseApi.removeShoeFromFavorite(userId, productId);
//   }
// }
