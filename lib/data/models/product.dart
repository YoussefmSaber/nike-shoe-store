import 'package:nike_shoe_store/domain/entities/product.dart';

class ProductModel extends ProductEntity {
  const ProductModel(
      {required super.id,
      required super.name,
      required super.description,});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }
}
