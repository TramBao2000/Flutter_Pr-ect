import 'dart:convert';
import 'dart:isolate';

import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:iowallet/common/security/RSACrypto.dart';
import 'package:iowallet/model/request_and_reponse/KeyChange.dart';
import 'package:pointycastle/asymmetric/api.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:iowallet/common/network/RequestAPI.dart';
import 'package:iowallet/presentation/mainView/start/CheckExistUser.dart';
import 'package:pointycastle/digests/sha256.dart';
import 'package:pointycastle/signers/rsa_signer.dart';

import '../../../common/device/DeviceUtil.dart';
import '../../../common/security/encrypt.dart';
import '../../../common/utils/AppConstant.dart';
import '../../../common/utils/SharedPreferencesHelper.dart';
import '../AppBloc.dart';
import '../AppEvents.dart';
import '../AppState.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool loadDone = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => loadServerKey());
  }

  // Future<void> loadStateApp() async {
  //   final receivePort = ReceivePort();
  //
  //   final isolate = await Isolate.spawn(
  //     loadServerKey,
  //     [receivePort.sendPort, 3],
  //   );
  //
  //   receivePort.listen((message) {
  //     setState(() {
  //       context.read<AppBloc>().add(EventCheckExistUser());
  //       //     loadDone = true;
  //     });
  //     receivePort.close();
  //     isolate.kill();
  //   });
  // }

  Future<void> loadServerKey() async {
    // final pair = generateRSAkeyPair(exampleSecureRandom());

    AppConstant.appVer = await DeviceUtil().getAppVersion();
    AppConstant.deviceID = await DeviceUtil().getDeviceID();
    String? myPrivateKey =
        await SharedPreferencesHelper().getString("myPrivateKey");

    String? myPublicKey =
        await SharedPreferencesHelper().getString("myPublicKey");

    String? serverPublicKey =
        await SharedPreferencesHelper().getString("serverPublicKey");

    if (StringUtils.isNullOrEmpty(myPrivateKey) ||
        StringUtils.isNullOrEmpty(myPublicKey) ||
        StringUtils.isNullOrEmpty(serverPublicKey)) {
      final pair = generateRSAkeyPair(exampleSecureRandom());
      String? myPublicKey = encodePublicKeyToPem(pair.publicKey);
      var dataSign = AppConstant.appVer! + AppConstant.deviceID! + myPublicKey;
      AppConstant.rsa = new RSACrypto(pair.privateKey, pair.publicKey);
      String sign = AppConstant.rsa!.sign(dataSign);

      String? result = await RequestAPI().requestPost(
          "http://115.84.183.19:9090/EWalletApi/services/auth/key-exchange",
          jsonEncode(KeyChangeRequest(
              AppConstant.appVer, AppConstant.deviceID, myPublicKey, sign)));
      KeyChangeResponse response = KeyChangeResponse.fromJson(jsonDecode(result!));
      SharedPreferencesHelper()
          .setString("serverPublicKey", response.serverKey!);
      AppConstant.rsa?.setServerPublicKey(
          CryptoUtils.rsaPublicKeyFromPem(serverPublicKey!));
    } else {
      AppConstant.rsa = new RSACrypto(
          CryptoUtils.rsaPrivateKeyFromPem(myPrivateKey!),
          CryptoUtils.rsaPublicKeyFromPem(myPublicKey!));
      AppConstant.rsa?.setServerPublicKey(
          CryptoUtils.rsaPublicKeyFromPem(serverPublicKey!));
    }
    setState(() {
      context.read<AppBloc>().add(EventCheckExistUser());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state is StateCheckExistUser) {
          Navigator.of(context).pushNamed('/checkexistuser');
        }
      },
      child: Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
