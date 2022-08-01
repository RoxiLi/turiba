import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:turiba/screen/auth/auth_repository/i_auth_repository.dart';
import 'package:turiba/screen/auth/models/user.dart';
import 'package:turiba/screen/dashboard/home/place_repository/i_place_repository.dart';

import '../../home/model/place.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IAuthRepository _authRepository;
  final IPlaceRepository _placeRepository;
  ProfileBloc(this._authRepository, this._placeRepository)
      : super(const ProfileState.loading()) {
    on<GetProfile>(_onProfileFetch);
  }

  Future<void> _onProfileFetch(
    GetProfile event,
    Emitter<ProfileState> emit,
  ) async {
    final user = _authRepository.getUser();
    final failureOrPlaces = await _placeRepository.getLikedPlaces();
    failureOrPlaces.fold(
      (l) => emit(ProfileState.loaded(
        user: user,
        places: null,
      )),
      (places) => emit(ProfileState.loaded(
        user: user,
        places: places,
      )),
    );
  }
}
