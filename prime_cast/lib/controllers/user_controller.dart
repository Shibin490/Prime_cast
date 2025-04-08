import '../utils/storage_helper.dart';

class UserController {
  void login(String name, String email) {
    var storageHelper = StorageHelper();
    storageHelper.saveUserData(name, email);
    storageHelper.getUserData();
  }
}
