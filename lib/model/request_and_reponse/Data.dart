import 'MasterResponse.dart';

class DataResponse extends MasterResponse {
  String? data;

  DataResponse(String data, int resCode, String resMsg, String sign) {
    this.data = data;
    this.resCode = resCode;
    this.resMsg = resMsg;
    this.sign = sign;
  }

  factory DataResponse.fromJson(dynamic json) {
    return DataResponse(
        json['data'] as String,
        json['resCode'] as int,
        json['resMsg'] as String,
        json['sign'] as String);
  }
}

class DataRequest {
  String? appVersion;
  String? deviceId;
  String? data;
  String? sign;

  DataRequest(
      String? appVersion, String? deviceId, String? data, String? sign) {
    this.appVersion = appVersion;
    this.deviceId = deviceId;
    this.data = data;
    this.sign = sign;
  }
  Map toJson() => {
    'appVersion': appVersion,
    'deviceId': deviceId,
    'data': data,
    'sign': sign,
  };
}