import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HendelTheme {
  final _storage = GetStorage();
  final _key = 'isdarkmode';

  _setTheme(bool isDark) => _storage.write(_key, isDark);

  bool _loadDarkMode() => _storage.read(_key) ?? false;

  ThemeMode get getTheme => _loadDarkMode() ? ThemeMode.dark : ThemeMode.light;

  void submitTheme() {
    Get.changeThemeMode(_loadDarkMode() ? ThemeMode.dark : ThemeMode.light);

    _setTheme(!_loadDarkMode());
  }
}
