import 'package:flutter/material.dart';

class DialogUtils {
  static Future<bool?> displayDialogOKCallBack(
      BuildContext context, String title, String contain, String textButton) async {
    return await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Container(
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
                Text(title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600, color: Colors.blue),),
                SizedBox(height: 15,),
                Text(contain,style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                SizedBox(height: 22,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pop(true);
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                      ),
                      child: Text(textButton,style: TextStyle(fontSize: 18),)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
