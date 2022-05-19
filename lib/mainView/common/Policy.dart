import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Policy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Điều khoản và Chính sách'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(child: Text("Điều khoản và Chính sách"),)
      ),
    );
  }
}
