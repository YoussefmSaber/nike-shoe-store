import 'package:equatable/equatable.dart';

class ProductColorEnitity extends Equatable {
  final String id;
  final String shoeId;
  final String image;
  final double currentPrice;
  final double? oldPrice;
  final String? state;
  final String category;

  const ProductColorEnitity({
    required this.id,
    required this.shoeId,
    required this.image,
    required this.currentPrice,
    required this.oldPrice,
    required this.state,
    required this.category,
  });

  @override
  List<Object?> get props {
    return [
      id,
      shoeId,
      image,
      currentPrice,
      oldPrice,
      state,
      category,
    ];
  }
}
