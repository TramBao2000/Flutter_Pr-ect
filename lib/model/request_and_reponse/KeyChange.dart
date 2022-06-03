import 'dart:typed_data';

import 'MasterResponse.dart';

class KeyChangeRequest {
  String? appVersion;
  String? deviceId;
  String? clientKey;
  String? sign;

  KeyChangeRequest(
      String? appVersion, String? deviceId, String? clientKey, String? sign) {
    this.appVersion = appVersion;
    this.deviceId = deviceId;
    this.clientKey = clientKey;
    this.sign = sign;
  }
  Map toJson() => {
    'appVersion': appVersion,
    'deviceId': deviceId,
    'clientKey': clientKey,
    'sign': sign,
  };
}

class KeyChangeResponse extends MasterResponse {
  String? serverKey;

  KeyChangeResponse(String serverKey, int resCode, String resMsg, String sign) {
    this.serverKey = serverKey;
    this.resCode = resCode;
    this.resMsg = resMsg;
    this.sign = sign;
  }

  factory KeyChangeResponse.fromJson(dynamic json) {
    return KeyChangeResponse(
        json['serverKey'] as String,
        json['resCode'] as int,
        json['resMsg'] as String,
        json['sign'] as String);
  }
}

