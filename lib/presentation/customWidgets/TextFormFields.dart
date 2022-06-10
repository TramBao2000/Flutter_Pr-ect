import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iowallet/presentation/customWidgets/CustomSuperTooltip.dart';

class TextFormFields extends StatefulWidget {
  const TextFormFields(
      {Key? key,
        this.title = "",
        this.labelText = "",
        this.iconField = "",
        this.imageField = "",
        this.iconNote= false})
      : super(key: key);
  final String title;
  final String labelText;
  final String iconField;
  final String imageField;
  final bool iconNote;
  @override
  _TextFormFieldsState createState() => _TextFormFieldsState();
}
class _TextFormFieldsState extends State<TextFormFields> {
  String _name = "tram";
  void onSubmit(value){
    setState(() { _name = value; });
  }
  void onClearText(){
    setState(() { _name = ""; });
  }

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
            child: Image(width: 33, height: 27, image: AssetImage(widget.imageField)),
          ),
          Expanded(
              flex: 9,
              child: Container(
                margin: const EdgeInsets.only(left: 11.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5.0),
                        child:
                        Text(
                          widget.title,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF000000),
                          ),
                        ),),
                      widget.iconNote == true ?Container(child: SuperTooltipWidget(),) : Container()
                    ],),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 3.0),
                      child: SizedBox(
                        height: 30,
                        child: widget.iconField != ""
                            ? TextField(
                          onChanged: (text) {
                            _name = text;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: _name,
                            suffixIcon: IconButton(
                              onPressed: onClearText,
                              icon: Image.asset('assets/icons/iconClose.png'),
                            ),
                          ),
                          onSubmitted: (String value){
                            onSubmit(value);
                          },
                        )
                            : TextField(
                          enabled: false,
                          controller: _controller,
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 40),
                          decoration: InputDecoration(
                            fillColor: Color(0xFFDEDEDE),
                            filled: true,
                            hintText: widget.labelText,
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