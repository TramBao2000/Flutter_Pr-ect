import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pointycastle/pointycastle.dart';
//import 'package:pointycastle/asymmetric/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../device/DeviceUtil.dart';
import '../security/RSACrypto.dart';

class AppConstant {
  static final AppConstant _instance = AppConstant._internal();
  static RSACrypto? rsa;
  static String? appVer;
  static String? deviceID;

  factory AppConstant() {
    return _instance;
  }

  AppConstant._internal() {}
}
