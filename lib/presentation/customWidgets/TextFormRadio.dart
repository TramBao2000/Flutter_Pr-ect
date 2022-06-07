import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormRadio extends StatefulWidget {
  const TextFormRadio({Key? key, this.title = "", this.imageField = ""})
      : super(key: key);
  final String title;
  final String imageField;

  @override
  State<TextFormRadio> createState() => _TextFormRadioState();
}

enum OS { man, woman }

class _TextFormRadioState extends State<TextFormRadio> {
  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    OS? _os = OS.man;
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Image(
                width: 33, height: 27, image: AssetImage(widget.imageField)),
          ),
          Expanded(
              flex: 9,
              child: Container(
                margin: const EdgeInsets.only(left: 11.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000),
                      ),
                    ),
                    Container(child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: 'null',
                                  onChanged: (index) {}),
                              Expanded(child: Text('Nam'))
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: 'null',
                                  onChanged: (index) {}),
                              Expanded(child: Text('Nữ'))
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [],
                          ),
                        ),
                      ],
                    ),),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  moveToVerifyScreen(BuildContext context) {}
}
