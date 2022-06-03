import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pointycastle/pointycastle.dart';
//import 'package:pointycastle/asymmetric/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../device/DeviceUtil.dart';
import '../security/RSA.dart';

class AppConstant {
  static final AppConstant _instance = AppConstant._internal();
  static RSAPrivateKey? myPrivateKey;
  static RSAPublicKey? myPublicKey;
  static RSAPublicKey? serverPublicKey;
  static RSA rsa = new RSA();
  static String? appVer;
  static String? deviceID;

  factory AppConstant() {
    return _instance;
  }

  AppConstant._internal() {}
}
