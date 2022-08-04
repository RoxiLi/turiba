import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:turiba/screen/dashboard/home/place_repository/i_place_repository.dart';

import '../model/place.dart';

part 'places_bloc.freezed.dart';
part 'places_event.dart';
part 'places_state.dart';

@injectable
class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  final IPlaceRepository _placeRepository;
  PlacesBloc(this._placeRepository) : super(const PlacesState.loading()) {
    on<GetPlaces>(_onGetPlaces);
    on<GetFavoritesPlaces>(_onGetFavoritesPlaces);
    on<GetLikedPlaces>(_onGetLikedPlaces);
    on<LikePlace>(_onLikePlace);
    on<UnLikePlace>(_onUnLikePlace);
    on<GetRecomendations>(_onGetRecomendations);
  }

  Future<void> _onLikePlace(
    LikePlace event,
    Emitter<PlacesState> emit,
  ) async {
    emit(const PlacesState.loading());
    await _placeRepository.likePlace(place: event.place);
    final failureOrPlaces = await _placeRepository.getLikedPlaces();
    failureOrPlaces.fold(
      (_) => emit(const PlacesState.failure()),
      (places) => emit(PlacesState.loaded(places: places)),
    );
  }

  Future<void> _onUnLikePlace(
    UnLikePlace event,
    Emitter<PlacesState> emit,
  ) async {
    emit(const PlacesState.loading());
    await _placeRepository.unLikePlace(place: event.place);
    final failureOrPlaces = await _placeRepository.getLikedPlaces();
    failureOrPlaces.fold(
      (_) => emit(const PlacesState.failure()),
      (places) => emit(PlacesState.loaded(places: places)),
    );
  }

  Future<void> _onGetPlaces(
    GetPlaces event,
    Emitter<PlacesState> emit,
  ) async {
    emit(const PlacesState.loading());
    final failureOrPlaces = await _placeRepository.getPlaces();
    failureOrPlaces.fold(
      (_) => emit(const PlacesState.failure()),
      (places) => emit(PlacesState.loaded(places: places)),
    );
  }

  Future<void> _onGetFavoritesPlaces(
    GetFavoritesPlaces event,
    Emitter<PlacesState> emit,
  ) async {
    emit(const PlacesState.loading());
    final failureOrPlaces = await _placeRepository.getFavoritesPlaces();
    failureOrPlaces.fold(
      (_) => emit(const PlacesState.failure()),
      (places) => emit(PlacesState.loaded(places: places)),
    );
  }

  Future<void> _onGetLikedPlaces(
    GetLikedPlaces event,
    Emitter<PlacesState> emit,
  ) async {
    emit(const PlacesState.loading());
    final failureOrPlaces = await _placeRepository.getLikedPlaces();
    failureOrPlaces.fold(
      (_) => emit(const PlacesState.failure()),
      (places) => emit(PlacesState.loaded(places: places)),
    );
  }

  Future<void> _onGetRecomendations(
    GetRecomendations event,
    Emitter<PlacesState> emit,
  ) async {
    emit(const PlacesState.loading());
    final failureOrPlaces = await _placeRepository.getRecomendations();
    failureOrPlaces.fold(
      (_) => emit(const PlacesState.failure()),
      (places) => emit(PlacesState.loaded(places: places)),
    );
  }
}
