import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String id;
  final String name;
  final String description;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.description,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      description,
    ];
  }
}
