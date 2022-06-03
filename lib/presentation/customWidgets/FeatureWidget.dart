import 'package:flutter/material.dart';

class FeatureWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 50,
      height: 80,
      child: Column(children: [
        Image(
            width: 50,
            height: 50,
            image: AssetImage('assets/photos/pic1.png')),
        Text("Tính năng"),
      ],),
    );
  }

}