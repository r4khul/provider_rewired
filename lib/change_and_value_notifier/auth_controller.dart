import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  Future<void> login(ValueNotifier<bool> loading) async {
    loading.value = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 1), () {});

    loading.value = false;
    _isLoggedIn = true;
    notifyListeners();
  }

  Future<void> logout(ValueNotifier<bool> loading) async {
    loading.value = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 1), () {});

    loading.value = false;
    _isLoggedIn = false;
    notifyListeners();
  }
}
