import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Quên mật khẩu'),
      ),
      body: Container(
          color: Colors.white,
          child: Center(child: Text("Quên mật khẩu"),)
      ),
    );
  }
}
