import 'dart:convert';
import 'dart:isolate';

import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/foundation.dart';

//import 'package:encrypt/encrypt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:iowallet/common/network/RequestAPI.dart';
import 'package:iowallet/presentation/mainView/start/CheckExistUser.dart';
import 'package:pointycastle/digests/sha256.dart';
import 'package:pointycastle/signers/rsa_signer.dart';
//import 'package:pointycastle/pointycastle.dart';

import '../../../common/device/DeviceUtil.dart';
import '../../../common/security/RSA.dart';
import '../../../common/utils/AppConstant.dart';
import '../../../common/utils/SharedPreferencesHelper.dart';
import '../../../model/request_and_reponse/KeyChange.dart';
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
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   Isolate.spawn(loadAppData(), null);
    // });
    // compute(loadAppData(),null);
    // SchedulerBinding.instance.addPostFrameCallback((_) {
    //   loadAppData();
    // });
    loadAppData();
  }

  // Future<void> fetchPhotos(Client client) async {
  //   ReceivePort port = ReceivePort();
  //   final response = await client
  //       .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  //   final isolate = await Isolate.spawn(
  //       loadAppData(), [port.sendPort, response.body]);
  //   List<Photo> data = await port.first;
  //   isolate.kill(priority: Isolate.immediate);
  // }
  //
  // void parsePhotos(List<dynamic> param) {
  //   SendPort sendPort = values[0];
  //   final parsed = jsonDecode(param[1]).cast<Map<String, dynamic>>();
  //   sendPort.send(parsed.map<Photo>((json) => Photo.fromJson(json)).toList());
  // }

  Future<void> loadAppData() async {
    AppConstant.appVer = await DeviceUtil().getAppVersion();
    AppConstant.deviceID = await DeviceUtil().getDeviceID();
    if (await loadKeys()) {
      AppConstant.rsa.genPairKey();

      String? myPublicKey =
          CryptoUtils.encodeRSAPublicKeyToPem(AppConstant.myPublicKey!);
      String? myPrivateKey =
          CryptoUtils.encodeRSAPrivateKeyToPem(AppConstant.myPrivateKey!);
      var dataSign = AppConstant.appVer! + AppConstant.deviceID! + myPublicKey;
      String sign = RSA().sign(dataSign, AppConstant.myPrivateKey!);

      String? a = await RequestAPI().requestPost(
          "http://115.84.183.19:9090/EWalletApi/services/auth/key-exchange",
          jsonEncode(KeyChangeRequest(
              AppConstant.appVer, AppConstant.deviceID, myPublicKey, sign)));
      KeyChangeResponse response = KeyChangeResponse.fromJson(jsonDecode(a!));
      SharedPreferencesHelper()
          .setString("serverPublicKey", response.serverKey!);
      AppConstant.serverPublicKey =
          CryptoUtils.rsaPublicKeyFromPem(response.serverKey!);
    }
    setState(() {
      context.read<AppBloc>().add(EventCheckExistUser());
      //     loadDone = true;
    });
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
      AppConstant.myPrivateKey =
          CryptoUtils.rsaPrivateKeyFromPem(myPrivateKey!);
      AppConstant.myPublicKey = CryptoUtils.rsaPublicKeyFromPem(myPublicKey!);
      AppConstant.serverPublicKey =
          CryptoUtils.rsaPublicKeyFromPem(serverPublicKey!);
      return false;
    }
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
