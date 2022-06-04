import 'package:flutter/material.dart';

// class FeatureWidget extends StatefulWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       width: 50,
//       height: 80,
//       child: Column(children: [
//         Image(
//             width: 50,
//             height: 50,
//             image: AssetImage('assets/photos/pic1.png')),
//         Text("Tính năng"),
//       ],),
//     );
//   }
//
// }

class FeatureWidget extends StatefulWidget {
  final String featureName;
  final String featureImageAsset;

  const FeatureWidget({Key? key, required this.featureName, required this.featureImageAsset}) : super(key: key);

  @override
  _FeatureWidgetState createState() => _FeatureWidgetState();
}

class _FeatureWidgetState extends State<FeatureWidget> {
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
            image: AssetImage(widget.featureImageAsset)),
        Text(widget.featureName),
      ],),
    );
  }
}
