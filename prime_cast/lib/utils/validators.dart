// utils/validators.dart
class Validators {
  static String? validateName(String? value) =>
      value == null || value.isEmpty ? 'Please enter your name' : null;

  static String? validateEmail(String? value) =>
      value == null || value.isEmpty ? 'Please enter your email' : null;
}
