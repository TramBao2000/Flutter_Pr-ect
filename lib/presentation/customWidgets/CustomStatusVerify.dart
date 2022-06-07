import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusVerify extends StatelessWidget {

  final String appBarTitle, textContend, textTitle;
  const StatusVerify({
    Key? key,
    this.textTitle = "",
    this.appBarTitle = "",
    this.textContend = "",
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Text(
            appBarTitle,
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              textTitle != "" ? Container(
                child: Text(
                  textTitle,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
              ) : Container(),
              Container(
                child: Text(
                  textContend,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Row(
                        children: [
                          Text(
                            'xác thực tài khoản',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        primary: Color(0xFF2C84D4),
                      ),
                      onPressed: () => moveToVerifyScreen,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  moveToVerifyScreen(BuildContext context) {}
}
