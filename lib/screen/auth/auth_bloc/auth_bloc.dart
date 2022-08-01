import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:turiba/screen/auth/auth_repository/i_auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  AuthBloc(this._authRepository) : super(const AuthState.loading()) {
    on<CheckAuth>(_onCheckAuth);
    on<LogOut>(_onLogOut);
  }

  Future<void> _onCheckAuth(
    CheckAuth event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final isLogged = _authRepository.isSignedInUser();
    if (isLogged) {
      emit(const AuthState.authenticated());
    } else {
      emit(const AuthState.notAuthenticated());
    }
  }

  Future<void> _onLogOut(
    LogOut event,
    Emitter<AuthState> emit,
  ) async {
    await _authRepository.logOut();
  }
}
