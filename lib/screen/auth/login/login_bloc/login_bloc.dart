import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:turiba/screen/auth/auth_repository/i_auth_repository.dart';
import 'package:turiba/screen/auth/models/user.dart';

import '../../../../core/failure.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepository _authRepository;
  LoginBloc(this._authRepository) : super(LoginState.initial()) {
    on<Login>(_onLogin);
  }

  Future<void> _onLogin(Login event, Emitter<LoginState> emit) async {
    emit(state.copyWith(
      loading: true,
      loginOrFailureOption: none(),
    ));
    final userOrFailure = await _authRepository.signInOrSignUpWithGoogle();
    emit(state.copyWith(
      loading: false,
      loginOrFailureOption: optionOf(userOrFailure),
    ));
  }
}
