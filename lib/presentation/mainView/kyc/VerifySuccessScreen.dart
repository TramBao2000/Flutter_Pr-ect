import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iowallet/presentation/customWidgets/CustomButtonBottom.dart';
import 'package:iowallet/presentation/mainView/home/Home.dart';
import 'package:iowallet/presentation/mainView/noticeboard/NoticeBoard.dart';

class VerifySuccess extends StatelessWidget {

  void _moveToNoticeBoardScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Text(
            "Trạng thái tài khoản",
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: [
                Container(
                child: Text(
                  "Xác thực tài khoản thành công",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Quý khách đã thực hiện xác thực tài khoản thành công",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              CustomButtonBottom(textTitle: "Về trang chủ", method: _moveToNoticeBoardScreen)
            ],
          ),
        ));
  }
}
