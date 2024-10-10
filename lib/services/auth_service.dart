import 'package:e_commerce_task/utils/firebase_auth_exception_handler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  //sign in/up with email & password
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign up
  Future<User?> signUpWithEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      handleFirebaseAuthException(e, 'Sign up');
      return null;
    } catch (e) {
      Get.snackbar('Failed', e.toString());
      return null;
    }
  }

  //log in
  Future<User?> loginWithEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      handleFirebaseAuthException(e, 'Login');
      return null;
    } catch (e) {
      Get.snackbar('Failed', e.toString());
      return null;
    }
  }

  //----------------------------------------------------------------------------------------------------

  //google sign in & log in

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        Get.snackbar('Failed', 'Google sign in canceled.');
        return null;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      handleFirebaseAuthException(e, 'Google sign in');
      return null;
    } catch (e) {
      Get.snackbar('Failed', e.toString());
      return null;
    }
  }

  //----------------------------------------------------------------------------------------------------

  //facebook sign in & log in
  Future<User?> signInWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();
      if (result.status == LoginStatus.success) {
        final AuthCredential credential =
            FacebookAuthProvider.credential(result.accessToken!.tokenString);
        UserCredential userCredential =
            await _auth.signInWithCredential(credential);

        return userCredential.user;
      } else if (result.status == LoginStatus.cancelled) {
        Get.snackbar('Failed', 'Facebook sign in canceled.');
        return null;
      } else {
        Get.snackbar('Failed', 'Facebook sign in failed.');
        return null;
      }
    } on FirebaseAuthException catch (e) {
      handleFirebaseAuthException(e, 'Facebook sign in');
      return null;
    } catch (e) {
      Get.snackbar('Failed', e.toString());
      print(e.toString());
      return null;
    }
  }

  //----------------------------------------------------------------------------------------------------

  //sign out
  Future<void> signOut() async {
    await _auth.signOut();
    Get.snackbar('Success', 'You successfully sign out.');
  }
}
