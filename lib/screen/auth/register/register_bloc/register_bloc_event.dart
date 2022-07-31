part of 'register_bloc_bloc.dart';

@freezed
class RegisterBlocEvent with _$RegisterBlocEvent {
  const factory RegisterBlocEvent.register() = Register;
  const factory RegisterBlocEvent.emailChanged({required String email}) =
      EmailChanged;
  const factory RegisterBlocEvent.passwordChanged({required String password}) =
      PasswordChanged;
  const factory RegisterBlocEvent.passwordConfirmationChanged(
      {required String password}) = PasswordConfirmationChanged;
  const factory RegisterBlocEvent.nameChanged({required String name}) =
      NameChanged;
}
