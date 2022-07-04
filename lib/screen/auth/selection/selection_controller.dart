import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:turiba/utils/app_string.dart';
import 'package:turiba/utils/global.dart';
import 'package:turiba/utils/widget/app_snackbar.dart';

class SelectionController extends GetxController {
  //===============================================================================================================

  RxBool googleLoading = false.obs;
  GoogleSignInAccount? _currentUser;

  GoogleSignIn googleSignIn = GoogleSignIn(scopes: <String>['email']);

  /// google login

  signInWithGoogle() async {
    handleSignIn();
  }

  Future<void> handleSignIn() async {
    try {
      bool connection = await checkConnection();
      if (connection) {
        googleLoading.value = true;
        await googleSignIn.signOut();
        await googleSignIn.signIn().then((value) async {
          final GoogleSignInAuthentication? googleAuth =
              await value?.authentication;

          final credential = GoogleAuthProvider.credential(
            accessToken: googleAuth?.accessToken,
            idToken: googleAuth?.idToken,
          );

          _currentUser = value;

          debugPrint(_currentUser.toString());
          debugPrint(credential.token.toString());

          UserCredential google =
              await FirebaseAuth.instance.signInWithCredential(credential);

          debugPrint(google.user!.uid.toString());
        });
        googleLoading.value = false;
      } else {
        toast(AppString.checkNetwork, false);
      }
    } catch (e) {
      googleLoading.value = false;
      debugPrint(e.toString());
    }
  }

  //===============================================================================================================

  RxBool fbLoading = false.obs;
  AccessToken? accessToken;

  /// facebook login

  void fbLogin() async {
    try {
      bool connection = await checkConnection();
      if (connection) {
        fbLoading.value = true;
        // await FacebookAuth.instance.logOut();
        // await FirebaseAuth.instance.signOut();
        final LoginResult result =
            await FacebookAuth.instance.login(permissions: ['email']);

        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(result.accessToken!.token);

        UserCredential facebook = await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential);

        debugPrint(facebook.toString());

        debugPrint(result.message);
        if (result.status == LoginStatus.success) {
          accessToken = result.accessToken;
          final data = await FacebookAuth.instance.getUserData();

          fbLoading.value = false;
          debugPrint(data.toString());
        } else {
          fbLoading.value = false;
          debugPrint("Status of facebook:- ${result.status}");
          debugPrint("Status of message:- ${result.message}");
          debugPrint(result.message);
        }
      } else {
        toast("Please check your internet connection", false);
      }
    } catch (e) {
      fbLoading.value = false;
      debugPrint(e.toString());
    }
  }

//===============================================================================================================

}
