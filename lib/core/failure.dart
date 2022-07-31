import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverError() = ServerError;
  const factory Failure.unauthenticated() = Unauthenticated;
  const factory Failure.unexpected() = Unexpected;
  const factory Failure.userOrPasswordIncorrect() = UserOrPasswordIncorrect;
  const factory Failure.notAuthenticated() = NotAuthenticated;
  const factory Failure.canceledByUser() = CanceledByUser;
  const factory Failure.accountAlreadyExists() = AccountAlreadyExists;
}
