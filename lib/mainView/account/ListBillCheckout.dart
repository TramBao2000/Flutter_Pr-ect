import 'package:flutter/material.dart';

class ListBillCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Thanh toán'),
      ),
      body: Container(
          color: Colors.white,
          child: Center(child: Text("Điều khoản và Chính sách"),)
      ),
    );
  }
}
