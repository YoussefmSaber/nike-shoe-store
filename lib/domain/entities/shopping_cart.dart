import 'package:equatable/equatable.dart';

class ShoppingCartEntity extends Equatable {
  final String productId;
  final String itemCount;

  const ShoppingCartEntity({
    required this.productId,
    required this.itemCount,
  });

  @override
  List<Object?> get props {
    return [
      productId,
      itemCount,
    ];
  }
}
