import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:turiba/core/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:turiba/screen/auth/auth_repository/i_auth_repository.dart';
import '../../../core/firebase_helper.dart';
import '../models/user.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository extends IAuthRepository {
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  AuthRepository(this._googleSignIn, this._firebaseAuth, this._firestore);

  @override
  Future<Either<Failure, UserModel>> signInOrSignUpWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const Failure.canceledByUser());
      }
      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      final authResult =
          await _firebaseAuth.signInWithCredential(authCredential);
      final user = UserModel(
        id: authResult.user!.uid,
        name: authResult.user?.displayName ?? "",
        photo: authResult.user?.photoURL ?? "",
        email: authResult.user?.email ?? "",
        topics: [],
      );
      if (authResult.additionalUserInfo!.isNewUser) {
        var box = await Hive.openBox('auth');
        box.put('userId', user.id);
        final userDoc = await _firestore.userDocument();
        final batch = _firestore.batch();

        batch.set(userDoc, user.toJson());
        batch.commit();
      }

      return right(user);
    } on FirebaseAuthException catch (_) {
      return left(const Failure.serverError());
    } on PlatformException catch (_) {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<void> logOut() async {
    await Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
    var box = await Hive.openBox('auth');
    box.put('userId', null);
  }

  @override
  bool isSignedInUser() {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      return true;
    }
    return false;
  }

  @override
  UserModel? getUser() {
    // final user = _firebaseAuth.currentUser;
    // if (user != null) {
    //   return UserModel(
    //     name: user.displayName ?? "",
    //     id: user.uid,
    //     email: user.email ?? "",
    //     photo: user.photoURL ?? "",
    //     topics: [],
    //   );
    // }
    // return null;
    return UserModel(
      name: "Danii Reinoso",
      id: "Ppo8hiqvFaPv2z01CQDu3onyYEB2",
      email: "daniireinoso@gmail.com",
      photo:
          "https://i.im.ge/2022/08/03/Fxvu9a.WhatsApp-Image-2022-08-03-at-12-03-03-PM.md.jpg",
      topics: [],
    );
  }
}
