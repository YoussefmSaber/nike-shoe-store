import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String id;
  final String createdAt;
  final String name;
  final String description;
  final String category;
  final String state;
  final double currentPrice;
  final double oldPrice;

  const ProductEntity({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.description,
    required this.category,
    required this.state,
    required this.currentPrice,
    required this.oldPrice,
  });

  @override
  List<Object?> get props {
    return [
      id,
      createdAt,
      name,
      description,
      category,
      state,
      currentPrice,
      oldPrice,
    ];
  }
}
