part of 'places_bloc.dart';

@freezed
class PlacesEvent with _$PlacesEvent {
  const factory PlacesEvent.getPlaces() = GetPlaces;
  const factory PlacesEvent.getFavoritesPlaces() = GetFavoritesPlaces;
  const factory PlacesEvent.getLikedPlaces() = GetLikedPlaces;
  const factory PlacesEvent.likePlace({required Place place}) = LikePlace;
  const factory PlacesEvent.unLikePlace({required Place place}) = UnLikePlace;
}
