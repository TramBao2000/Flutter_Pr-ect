import 'package:flutter/material.dart';

class Promote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: Center(child: Text("Ưu đãi"),)
    );
  }

  moveToExercise(BuildContext context) {
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => IndexPage(),
    //     ));
  }
  moveToHome(BuildContext context) {
    Navigator.of(context).pop();
  }
}
