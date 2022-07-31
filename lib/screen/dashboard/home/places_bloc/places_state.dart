part of 'places_bloc.dart';

@freezed
class PlacesState with _$PlacesState {
  const factory PlacesState.loading() = PlacesLoading;

  const factory PlacesState.loaded({
    required List<Place> places,
  }) = PlacesLoaded;
}
