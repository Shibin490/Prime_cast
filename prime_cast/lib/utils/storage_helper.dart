// ignore_for_file: non_constant_identifier_names

import 'package:shared_preferences/shared_preferences.dart';

class StorageHelper {
  Future<void> saveUserData(String name, String email) async {
    final shared_prefs = await SharedPreferences.getInstance();
    await shared_prefs.setString("user_name", name);
    await shared_prefs.setString("user_email", email);
  }

  Future<String?> getUserName() async {
    final shared_prefs = await SharedPreferences.getInstance();
    return shared_prefs.getString("user_name");
  }

  Future<String?> getUserEmail() async {
    final shared_prefs = await SharedPreferences.getInstance();
    return shared_prefs.getString("user_email");
  }

  Future<Map<String, String?>> getUserData() async {
    final shared_prefs = await SharedPreferences.getInstance();
    final name = shared_prefs.getString("user_name");
    final email = shared_prefs.getString("user_email");
    return {"name": name, "email": email};
  }
}
