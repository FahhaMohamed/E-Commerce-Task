import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

void handleFirebaseAuthException(FirebaseAuthException e, String title) {
  switch (e.code) {
    case 'weak-password':
      Get.snackbar('$title failed', 'Your password is too weak.');
      break;
    case 'email-already-in-use':
      Get.snackbar('$title failed', 'The email is already in use.');
      break;
    case 'invalid-email':
      Get.snackbar('$title failed', 'The email address is not valid.');
      break;
    case 'user-not-found':
      Get.snackbar('$title failed', 'No user found for this email.');
      break;
    case 'wrong-password':
      Get.snackbar('$title failed', 'Incorrect password. Please try again.');
      break;
    case 'operation-not-allowed':
      Get.snackbar('$title failed', 'This sign-in method is not allowed.');
      break;
    case 'too-many-requests':
      Get.snackbar('$title failed', 'Too many attempts. Try again later.');
      break;
    case 'network-request-failed':
      Get.snackbar(
          '$title failed', 'Network error. Please check your connection.');
      break;
    case 'user-disabled':
      Get.snackbar('$title failed', 'This user has been disabled.');
      break;
    default:
      Get.snackbar(
          '$title failed', 'An unexpected error occurred: ${e.message}');
  }
}
