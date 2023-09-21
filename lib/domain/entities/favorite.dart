import 'package:equatable/equatable.dart';

class FavoriteEntity extends Equatable {
  final String productId;

  const FavoriteEntity({
    required this.productId,
  });

  @override
  List<Object?> get props {
    return [
      productId,
    ];
  }
}
