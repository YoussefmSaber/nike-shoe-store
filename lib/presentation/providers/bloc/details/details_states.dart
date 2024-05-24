import 'package:equatable/equatable.dart';

// Base class for states
abstract class DetailsState extends Equatable {
  const DetailsState();

  @override
  List<Object> get props => [];
}

// Initial state when the screen is first loaded
class DetailsInitial extends DetailsState {}

// State when the product is added to favorites
class AddedToFavoritesState extends DetailsState {}

// State when the product is removed from favorites
class RemovedFromFavoritesState extends DetailsState {}

// State when the product is added to the cart
class AddedToCartState extends DetailsState {}

// State when an error occurs
class DetailsError extends DetailsState {
  final String errorMessage;

  const DetailsError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
