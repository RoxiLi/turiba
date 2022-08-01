part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = ProfileLoading;

  const factory ProfileState.loaded({
    List<Place>? places,
    required UserModel? user,
  }) = ProfileLoaded;
}
