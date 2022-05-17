import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.red,
      child: Column(children: [
        MaterialButton(
          child: Text('Move'),
          onPressed: () => moveToExercise(context),
        ),
        MaterialButton(
          child: Text('Back'),
          onPressed: () => moveToHome(context),
        ),
      ]),
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
