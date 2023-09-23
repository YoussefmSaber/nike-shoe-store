import 'package:nike_shoe_store/data/models/model.dart';
import 'package:nike_shoe_store/domain/entities/shoe_item.dart';

class ShoeItemModel extends ShoeItemEntity {
  @override
  final ProductModel product;
  @override
  final ProductColorModel color;

  const ShoeItemModel({
    required this.product,
    required this.color,
  }) : super(
          product: product,
          color: color,
        );
}
