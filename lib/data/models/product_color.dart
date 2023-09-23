import 'package:nike_shoe_store/domain/entities/product_color.dart';

class ProductColorModel extends ProductColorEnitity {
  ProductColorModel(
      {required super.id,
      required super.shoeId,
      required super.image,
      required super.currentPrice,
      required super.oldPrice,
      super.state,
      required super.category});

  factory ProductColorModel.fromJson(Map<String, dynamic> json) {
    return ProductColorModel(
      id: json['id'],
      shoeId: json['shoe_id'],
      image: json['image'],
      currentPrice: json['current_price'],
      oldPrice: json['old_price'],
      state: json['state'],
      category: json['category'],
    );
  }
}
