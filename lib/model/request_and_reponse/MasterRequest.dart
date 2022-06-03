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