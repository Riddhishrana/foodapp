import 'package:flutter/foundation.dart';
import '../models/user_model.dart';

class AuthProvider extends ChangeNotifier {
  UserModel? _currentUser;
  bool _isLoggedIn = false;
  String? _registeredPassword;

  UserModel? get currentUser => _currentUser;
  bool get isLoggedIn => _isLoggedIn;

  bool register({
    required String fullName,
    required String email,
    required String phone,
    required String address,
    required String password,
  }) {
    if (fullName.isEmpty || email.isEmpty || password.isEmpty) {
      return false;
    }
    _currentUser = UserModel(
      id: 'usr_${DateTime.now().millisecondsSinceEpoch}',
      fullName: fullName,
      email: email,
      phone: phone.isEmpty ? '+1 (555) 000-0000' : phone,
      address: address.isEmpty ? '123 Main St, City' : address,
      profileImage: 'assets/images/default_avatar.png',
      memberSince: 'Today',
      rewardPoints: 100,
    );
    _registeredPassword = password;
    _isLoggedIn = false;
    notifyListeners();
    return true;
  }

  bool login(String email, String password) {
    final user = _currentUser;
    if (user == null ||
        _registeredPassword == null ||
        user.email.trim().toLowerCase() != email.trim().toLowerCase() ||
        _registeredPassword != password) {
      return false;
    }
    _isLoggedIn = true;
    notifyListeners();
    return true;
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }

  void updateProfileImage(String newImagePath) {
    if (_currentUser != null) {
      _currentUser = _currentUser!.copyWith(profileImage: newImagePath);
      notifyListeners();
    }
  }

  void updateProfileDetails({
    required String fullName,
    required String phone,
    required String address,
  }) {
    if (_currentUser != null) {
      _currentUser = _currentUser!.copyWith(
        fullName: fullName,
        phone: phone,
        address: address,
      );
      notifyListeners();
    }
  }
}
