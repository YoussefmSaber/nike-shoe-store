import 'package:equatable/equatable.dart';
import 'package:nike_shoe_store/domain/entities/product.dart';
import 'package:nike_shoe_store/domain/entities/product_color.dart';

class ShoeItemEntity extends Equatable {
  final ProductEntity product;
  final ProductColorEnitity color;

  const ShoeItemEntity({
    required this.product,
    required this.color,
  });

  @override
  List<Object?> get props {
    return [
      product,
      color,
    ];
  }
}
