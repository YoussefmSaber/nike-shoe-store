import 'package:bloc/bloc.dart';
 // Import your product model
import 'details_events.dart'; // Import your events
import 'details_states.dart'; // Import your states

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  // Initialize the initial state
  DetailsBloc() : super(DetailsInitial());

  Stream<DetailsState> mapEventToState(DetailsEvent event) async* {

    if (event is AddToFavoritesEvent) {
      // Handle adding the product to favorites here
      try {
        // Perform the necessary actions, e.g., make an API call
        // If successful, yield the AddedToFavoritesState
        yield AddedToFavoritesState();
      } catch (e) {
        // If an error occurs, yield the DetailsError state with an error message
        yield DetailsError('Failed to add to favorites: $e');
      }
    } else if (event is RemoveFromFavoritesEvent) {
      // Handle removing the product from favorites here
      try {
        // Perform the necessary actions, e.g., make an API call
        // If successful, yield the RemovedFromFavoritesState
        yield RemovedFromFavoritesState();
      } catch (e) {
        // If an error occurs, yield the DetailsError state with an error message
        yield DetailsError('Failed to remove from favorites: $e');
      }
    } else if (event is AddToCartEvent) {
      // Handle adding the product to the cart here
      try {
        // Perform the necessary actions, e.g., make an API call
        // If successful, yield the AddedToCartState
        yield AddedToCartState();
      } catch (e) {
        // If an error occurs, yield the DetailsError state with an error message
        yield DetailsError('Failed to add to cart: $e');
      }
    }
  }
}
