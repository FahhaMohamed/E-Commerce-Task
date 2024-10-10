import 'package:get/get.dart';

bool validSignUpFields(String email, String password, String confirmPassword) {
  if (email.isEmpty) {
    Get.snackbar('Warning', 'Enter your email.');
    return false;
  } else if (password.isEmpty) {
    Get.snackbar('Warning', 'Enter your password.');
    return false;
  } else if (confirmPassword.isEmpty) {
    Get.snackbar('Warning', 'Re-enter your password.');
    return false;
  } else if (password != confirmPassword) {
    Get.snackbar('Warning', 'Passwords do not match.');
    return false;
  } else {
    return true;
  }
}

bool validLogInFields(String email, String password) {
  if (email.isEmpty) {
    Get.snackbar('Warning', 'Enter your email.');
    return false;
  } else if (password.isEmpty) {
    Get.snackbar('Warning', 'Enter your password.');
    return false;
  } else {
    return true;
  }
}
