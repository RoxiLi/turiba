import 'package:dartz/dartz.dart';
import 'package:turiba/core/failure.dart';
import 'package:turiba/screen/auth/models/user.dart';

abstract class IAuthRepository {
  Future<Either<Failure, UserModel>> signInOrSignUpWithGoogle();
  Future<void> logOut();
  bool isSignedInUser();
}
