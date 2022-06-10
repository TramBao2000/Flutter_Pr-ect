class RegisterRequest {
  String? email;
  String? fullName;
  String? phoneNumber;
  String? password;

  RegisterRequest(
      String? email, String? fullName, String? phoneNumber, String? password) {
    this.email = email;
    this.fullName = fullName;
    this.phoneNumber = phoneNumber;
    this.password = password;
  }

  Map toJson() => {
        'email': email,
        'fullName': fullName,
        'phoneNumber': phoneNumber,
        'password': password,
      };
}

class RegisterResponse {
  String? phoneNumber;
  int? timeOutOtp;

  RegisterResponse(String phoneNumber, int timeOutOtp) {
    this.phoneNumber = phoneNumber;
    this.timeOutOtp = timeOutOtp;
  }

  factory RegisterResponse.fromJson(dynamic json) {
    return RegisterResponse(
        json["phoneNumber"] as String, json["timeOutOtp"] as int);
  }
}
