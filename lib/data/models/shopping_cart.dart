import 'package:nike_shoe_store/domain/entities/shopping_cart.dart';

class ShoppingCartModel extends ShoppingCartEntity {
  const ShoppingCartModel(
      {required super.productColorId, required super.itemCount});

  factory ShoppingCartModel.fromJson(Map<String, dynamic> json) {
    return ShoppingCartModel(
      productColorId: json['product_id'],
      itemCount: json['item_count'],
    );
  }
}
