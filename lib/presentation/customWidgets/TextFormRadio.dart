import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_radio_button/group_radio_button.dart';

class TextFormRadio extends StatefulWidget {
  const TextFormRadio({Key? key, this.title = "", this.imageField = ""})
      : super(key: key);
  final String title;
  final String imageField;

  @override
  State<TextFormRadio> createState() => _TextFormRadioState();
}

class _TextFormRadioState extends State<TextFormRadio> {
  int _stackIndex = 0;
  String _verticalGroupValue = "Nam";

  List<String> _status = ["Nam", "Nữ"];
  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        RadioGroup<String>.builder(
                          direction: Axis.horizontal,
                          groupValue: _verticalGroupValue,
                          horizontalAlignment: MainAxisAlignment.spaceAround,
                          onChanged: (value) => setState(() {
                            if(value != null) {
                              _verticalGroupValue = value;
                            }
                          }),
                          items: _status,
                          textStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF000000),
                          ),
                          itemBuilder: (item) => RadioButtonBuilder(
                            item,

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