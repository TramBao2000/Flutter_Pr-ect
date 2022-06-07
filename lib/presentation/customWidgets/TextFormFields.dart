import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFields extends StatelessWidget {
  const TextFormFields(
      {Key? key,
      this.title = "",
      this.labelText = "",
      this.iconField = "",
      this.imageField = ""})
      : super(key: key);
  final String title;
  final String labelText;
  final String iconField;
  final String imageField;

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
            child: Image(width: 33, height: 27, image: AssetImage(imageField)),
          ),
          Expanded(
              flex: 9,
              child: Container(
                margin: const EdgeInsets.only(left: 11.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: SizedBox(
                        height: 24,
                        child: iconField != ""
                            ? TextField(
                                controller: _controller,
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 40),
                                decoration: InputDecoration(
                                  fillColor: Color(0xFFFFFFFF),
                                  filled: true,
                                  hintText: labelText,
                                  hintStyle: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF000000),
                                  ),
                                  isCollapsed: true,
                                  contentPadding: EdgeInsets.all(8),
                                  // Added this
                                  labelStyle: TextStyle(color: Colors.red),
                                  enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                          color: Color(0xFFDEDEDE))),
                                  suffixIcon: IconButton(
                                    onPressed: _controller.clear,
                                    icon: Image.asset(iconField),
                                    iconSize: 15,
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                // Only numbers can be entered
                              )
                            : TextField(
                                controller: _controller,
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 40),
                                decoration: InputDecoration(
                                  fillColor: Color(0xFFDEDEDE),
                                  filled: true,
                                  hintText: labelText,
                                  hintStyle: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF000000),
                                  ),
                                  isCollapsed: true,
                                  contentPadding: EdgeInsets.all(8),
                                  // Added this
                                  labelStyle: TextStyle(color: Colors.red),
                                  enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                          color: Color(0xFFDEDEDE))),
                                ),
                                keyboardType: TextInputType.number,
                                // Only numbers can be entered
                              ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
