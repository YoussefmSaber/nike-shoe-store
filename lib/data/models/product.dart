import 'package:nike_shoe_store/domain/entities/product.dart';

class ProductModel extends ProductEntity {
  const ProductModel(
      {required super.id,
      required super.createdAt,
      required super.name,
      required super.description,
      required super.category,
      required super.state,
      required super.currentPrice,
      required super.oldPrice,
      required super.image});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      createdAt: json['created_at'],
      name: json['name'],
      description: json['description'],
      category: json['category'],
      state: json['state'],
      currentPrice: json['current_price'],
      oldPrice: json['old_price'],
      image: json['image'],
    );
  }
}
