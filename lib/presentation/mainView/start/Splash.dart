import 'dart:convert';
import 'dart:typed_data';

import 'package:basic_utils/basic_utils.dart';

//import 'package:encrypt/encrypt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:iowallet/common/network/RequestAPI.dart';
import 'package:pointycastle/digests/sha256.dart';
import 'package:pointycastle/signers/rsa_signer.dart';
//import 'package:pointycastle/pointycastle.dart';

import '../../../common/device/DeviceUtil.dart';
import '../../../common/security/RSA.dart';
import '../../../common/utils/AppConstant.dart';
import '../../../common/utils/SharedPreferencesHelper.dart';
import '../../../model/request/KeyChange.dart';
import '../AppBloc.dart';
import '../AppEvents.dart';
import '../AppState.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    loadAppData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state is StateCheckExistUser) {
          Navigator.of(context).pushNamed('/checkexistuser');
        }
      },
      child: Scaffold(
        body: Center(
            child: Column(
          children: [
            CircularProgressIndicator(),
            ElevatedButton(
              child: Text('Go to Check exist user'),
              onPressed: () {
                // context.read<AppBloc>().add(EventCheckExistUser());
              },
            ),
          ],
        )),
      ),
    );
  }
}

Future<void> loadAppData() async {
  if (await loadKeys()) {
    AppConstant.rsa.genPairKey();

    String appVer = await DeviceUtil().getAppVersion();
    String? deviceID = await DeviceUtil().getDeviceID();
    String? myPublicKey =
        CryptoUtils.encodeRSAPublicKeyToPem(AppConstant.myPublicKey!);
    String? myPrivateKey =
    CryptoUtils.encodeRSAPrivateKeyToPem(AppConstant.myPrivateKey!);
    var dataSign = appVer + deviceID! + myPublicKey;
    String sign = RSA().sign(dataSign, AppConstant.myPrivateKey!);

    String? a = await RequestAPI().requestPost(
        "http://115.84.183.19:9090/EWalletApi/services/auth/key-exchange",
        jsonEncode(KeyChange(appVer, deviceID, myPublicKey, sign)));
    String b = "";
  }
}

Future<bool> loadKeys() async {
  String? myPrivateKey =
      await SharedPreferencesHelper().getString("myPrivateKey");

  String? myPublicKey =
      await SharedPreferencesHelper().getString("myPublicKey");

  String? serverPublicKey =
      await SharedPreferencesHelper().getString("serverPublicKey");

  if (StringUtils.isNullOrEmpty(myPrivateKey) ||
      StringUtils.isNullOrEmpty(myPublicKey) ||
      StringUtils.isNullOrEmpty(serverPublicKey)) {
    return true;
  } else {
    AppConstant.myPrivateKey = CryptoUtils.rsaPrivateKeyFromPem(myPrivateKey!);
    AppConstant.myPublicKey = CryptoUtils.rsaPublicKeyFromPem(myPublicKey!);
    AppConstant.serverPublicKey =
        CryptoUtils.rsaPrivateKeyFromPem(serverPublicKey!);
    return false;
  }
}

Future<void> sendNewKeytoServer() async {
  String url =
      'http://115.84.183.19:9090/EWalletApi/services/auth/key-exchange';
  Map<String, String> headers = {"Content-type": "application/json"};
  String json =
      '{"appVersion": "string","deviceId": "string","clientKey": "string","sign": "string"}';
  // tạo POST request
  Response response = await post(Uri.parse(url), headers: headers, body: json);
  // kiểm tra status code của kết quả response
  int statusCode = response.statusCode;
  // API này trả về id của item mới được add trong body
  String body = response.body;
}
