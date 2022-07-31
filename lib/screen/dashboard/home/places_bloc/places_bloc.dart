import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/place.dart';

part 'places_bloc.freezed.dart';
part 'places_event.dart';
part 'places_state.dart';

class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  PlacesBloc() : super(const PlacesState.loading()) {
    on<GetPlaces>(_onGetPlaces);
    on<GetFavoritesPlaces>(_onGetFavoritesPlaces);
  }

  Future<void> _onGetPlaces(
    GetPlaces event,
    Emitter<PlacesState> emit,
  ) async {}

  Future<void> _onGetFavoritesPlaces(
    GetFavoritesPlaces event,
    Emitter<PlacesState> emit,
  ) async {}
}
