import 'package:equatable/equatable.dart';

class ShoppingCartEntity extends Equatable {
  final String productColorId;
  final String itemCount;

  const ShoppingCartEntity({
    required this.productColorId,
    required this.itemCount,
  });

  @override
  List<Object?> get props {
    return [
      productColorId,
      itemCount,
    ];
  }
}
