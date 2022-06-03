class CheckPhoneNumberRequest {
  String? phoneNumber;

  CheckPhoneNumberRequest(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  Map toJson() => {
        'phoneNumber': phoneNumber,
      };
}

class CheckPhoneNumberResponse {}
