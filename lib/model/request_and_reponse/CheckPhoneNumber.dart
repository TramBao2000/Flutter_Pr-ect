class CheckPhoneNumberRequest {
  String? phoneNumber;

  CheckPhoneNumberRequest(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  Map toJson() => {
        'phoneNumber': phoneNumber,
      };
}

class CheckPhoneNumberResponse {
  String? phoneNumber;
  bool?  status;
  CheckPhoneNumberResponse(String phoneNumber, bool status){
    this.phoneNumber = phoneNumber;
    this.status = status;
  }

  factory CheckPhoneNumberResponse.fromJson(dynamic json){
    return CheckPhoneNumberResponse(
      json["phoneNumber"] as String,
      json["status"] as bool
    );
  }
}
