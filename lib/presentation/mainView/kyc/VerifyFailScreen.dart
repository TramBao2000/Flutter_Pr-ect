import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iowallet/presentation/customWidgets/CustomButtonBottom.dart';
import 'package:iowallet/presentation/mainView/home/Home.dart';

class VerifyFail extends StatelessWidget {

  final String appBarTitle, textContend, textTitle;
  const VerifyFail({
    Key? key,
    this.textTitle = "",
    this.appBarTitle = "",
    this.textContend = "",
  }) : super(key: key);

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
            appBarTitle,
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                child: Text(
                  "Xác thực tài khoản không thành công",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              Container(
                child: Text(
                  " Lí do: Thông tin họ và tên của Quý khách không trùng với thông tin giấy tờ Quý khách sử dụng để xác thực tài khoản. Quý khách vui lòng kiểm tra lại:",
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
