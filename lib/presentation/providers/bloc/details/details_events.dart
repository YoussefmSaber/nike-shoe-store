import 'package:equatable/equatable.dart';

// Define an abstract base class for events
abstract class DetailsEvent extends Equatable {
  const DetailsEvent();

  @override
  List<Object> get props => [];
}

// Event: Add the product to favorites
class AddToFavoritesEvent extends DetailsEvent {
  final String productId; // Product ID to be added to favorites

  const AddToFavoritesEvent(this.productId);

  @override
  List<Object> get props => [productId]; // Include product ID in props
}

// Event: Remove the product from favorites
class RemoveFromFavoritesEvent extends DetailsEvent {
  final String productId; // Product ID to be removed from favorites

  const RemoveFromFavoritesEvent(this.productId);

  @override
  List<Object> get props => [productId]; // Include product ID in props
}

// Event: Add the product to the cart
class AddToCartEvent extends DetailsEvent {
  final String productId; // Product ID to be added to the cart

  const AddToCartEvent(this.productId);

  @override
  List<Object> get props => [productId]; // Include product ID in props
}
