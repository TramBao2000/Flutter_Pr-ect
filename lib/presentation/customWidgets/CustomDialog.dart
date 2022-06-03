import 'dart:ui';
import 'package:flutter/material.dart';

class CustomDialogBox extends StatefulWidget {
  final String title, descriptions, text;

  const CustomDialogBox({Key? key, required this.title, required this.descriptions, required this.text}) : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  contentBox(context){
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(color: Colors.black,offset: Offset(0,3),
                blurRadius: 10
            ),
          ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(widget.title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600, color: Colors.blue),),
          SizedBox(height: 15,),
          Text(widget.descriptions,style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
          SizedBox(height: 22,),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                ),
                child: Text(widget.text,style: TextStyle(fontSize: 18),)),
          ),
        ],
      ),
    );
  }
}
