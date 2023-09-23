import 'package:nike_shoe_store/domain/entities/product_color.dart';

class ProductColorModel extends ProductColorEnitity {
  const ProductColorModel(
      {required super.id,
      required super.shoeId,
      required super.image,
      required super.currentPrice,
      required super.oldPrice,
      super.state,
      required super.category});

  factory ProductColorModel.fromJson(Map<String, dynamic> json) {
    final dynamic currentPriceValue = json['current_price'];
    final dynamic oldPriceValue = json['old_price'];

    double? oldPrice;
    if (oldPriceValue is int) {
      oldPrice = oldPriceValue.toDouble();
    } else if (oldPriceValue is double) {
      oldPrice = oldPriceValue;
    } else {
      oldPrice = null;
    }

    // Check the type of 'current_price' and convert it accordingly
    double currentPrice;
    if (currentPriceValue is int) {
      currentPrice = currentPriceValue.toDouble();
    } else {
      currentPrice = currentPriceValue;
    }
    return ProductColorModel(
      id: json['id'],
      shoeId: json['shoe_id'],
      image: json['image'],
      currentPrice: currentPrice,
      oldPrice: oldPrice,
      state: json['state'],
      category: json['category'],
    );
  }
}
