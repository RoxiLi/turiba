part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = SearchInitial;
  const factory SearchState.failure() = SearchFailure;

  const factory SearchState.loading() = SearchLoading;

  const factory SearchState.loaded({required List<Place> places}) =
      SearchLoaded;
}
