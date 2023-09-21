import 'package:nike_shoe_store/domain/entities/favorite.dart';

class FavoriteModel extends FavoriteEntity {
  const FavoriteModel({required super.productId});

  factory FavoriteModel.fromJson(Map<String, dynamic> json) {
    return FavoriteModel(
      productId: json['product_id'],
    );
  }
}