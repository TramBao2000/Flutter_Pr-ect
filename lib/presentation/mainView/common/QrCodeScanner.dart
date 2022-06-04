import 'package:flutter/material.dart';

class QrCodeScanner extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('QrCodeScanner'),
      ),
      body: Container(
          color: Colors.white,
          child: Center(child: Text("QrCode"),)
      ),
    );
  }
  
}