part of 'places_bloc.dart';

@freezed
class PlacesEvent with _$PlacesEvent {
  const factory PlacesEvent.getPlaces() = GetPlaces;
  const factory PlacesEvent.getFavoritesPlaces() = GetFavoritesPlaces;
}
