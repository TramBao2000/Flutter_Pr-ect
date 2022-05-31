import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static final SharedPreferencesHelper _instance =
      SharedPreferencesHelper._internal();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  factory SharedPreferencesHelper() {
    return _instance;
  }

  SharedPreferencesHelper._internal() {}

  Future<void> setInt(String label, int value) async {
    SharedPreferences prefs = await _prefs;
    prefs.setInt(label, value);
  }

  Future<int?> getInt(String label) async {
    SharedPreferences prefs = await _prefs;
    return prefs.getInt(label);
  }

  Future<void> setString(String label, String value) async {
    SharedPreferences prefs = await _prefs;
    prefs.setString(label, value);
  }

  Future<String?> getString(String label) async {
    SharedPreferences prefs = await _prefs;
    return prefs.getString(label);
  }
}
