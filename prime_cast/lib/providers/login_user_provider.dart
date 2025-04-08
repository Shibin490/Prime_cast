import 'package:flutter/material.dart';
import '../utils/storage_helper.dart';

class UserProvider with ChangeNotifier {
  String? _userName;
  String? _userEmail;
  bool _isLoading = false;

  final StorageHelper _storageHelper = StorageHelper();

  String? get userName => _userName;
  String? get userEmail => _userEmail;
  bool get isLoading => _isLoading;

  // ✅ Login with loading and storage
  Future<void> login(String name, String email, VoidCallback onSuccess) async {
    if (name.isEmpty || email.isEmpty) return;

    _isLoading = true;
    notifyListeners();

    await _storageHelper.saveUserData(name, email);
    _userName = name;
    _userEmail = email;

    await Future.delayed(const Duration(seconds: 2)); // simulate network delay

    _isLoading = false;
    notifyListeners();

    onSuccess();
  }

  // ✅ Load saved user data
  Future<void> loadUserData() async {
    _userName = await _storageHelper.getUserName();
    _userEmail = await _storageHelper.getUserEmail();
    notifyListeners();
  }

  // ✅ Logout
  void logout() {
    _userName = null;
    _userEmail = null;
    notifyListeners();
  }
}
