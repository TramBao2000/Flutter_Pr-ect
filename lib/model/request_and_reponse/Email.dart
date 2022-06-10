class EmailRequest {
  String? email;

  EmailRequest(
      String? email) {
    this.email = email;
  }

  Map toJson() => {
    'email': email,
  };
}

class EmailResponse {
  String? email;
  bool? status;

  EmailResponse(String email, bool status) {
    this.email = email;
    this.status = status;
  }

  factory EmailResponse.fromJson(dynamic json) {
    return EmailResponse(
        json["email"] as String, json["status"] as bool);
  }
}
