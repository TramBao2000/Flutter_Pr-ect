import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserManual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hướng dẫn sử dụng'),
      ),
      body: Container(
          color: Colors.white,
          child: Center(child: Text("Hướng dẫn sử dụng"),)
      ),
    );
  }
}