import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:turiba/screen/dashboard/home/place_repository/i_place_repository.dart';

import '../../home/model/place.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IPlaceRepository _placeRepository;
  SearchBloc(this._placeRepository) : super(const SearchState.initial()) {
    on<Search>(_onSearchFetch);
  }

  Future<void> _onSearchFetch(Search event, Emitter<SearchState> emit) async {
    emit(const SearchState.loading());
    final failureOrPlaces = event.topics.isNotEmpty
        ? await _placeRepository.search(
            name: event.name,
            topics: event.topics,
          )
        : await _placeRepository.getPlaces();
    failureOrPlaces.fold(
      (_) => emit(const SearchState.failure()),
      (places) {
        if (event.name.isNotEmpty) {
          final filterByName =
              places.where((place) => place.name.contains(event.name)).toList();
          emit(SearchState.loaded(places: filterByName));
        } else {
          emit(SearchState.loaded(places: places));
        }
      },
    );
  }
}
