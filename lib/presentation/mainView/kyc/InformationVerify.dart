import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iowallet/presentation/customWidgets/CustomButtonBottom.dart';
import 'package:iowallet/presentation/customWidgets/TextFormFields.dart';
import 'package:iowallet/presentation/customWidgets/TextFormRadio.dart';
import 'package:iowallet/presentation/mainView/kyc/VerifySuccessScreen.dart';
import 'package:iowallet/presentation/mainView/noticeboard/NoticeBoard.dart';

class InformationVerifyWidget extends StatefulWidget {
  InformationVerifyWidget({Key? key}) : super(key: key);

  @override
  _InformationVerifyWidgetState createState() =>
      _InformationVerifyWidgetState();
}

class _InformationVerifyWidgetState extends State<InformationVerifyWidget> {
  final List<String> imageNoteLists = [
    "assets/icons/icSelfile.png",
    "assets/icons/icSelfile.png",
    "assets/icons/icSelfile.png"
  ];
  final List<String> titleLists = ['Mặt trước', 'Mặt sau', 'Chân dung'];

  _moveToVerifySuccessScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VerifySuccess(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('xác thực tài khoản'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 4.0),
                child: Row(
                  children: [
                    Text(
                      'Thông tin của Qúy Khách',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2C84D4),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    TextFormFields(
                        title: "Loại giấy tờ",
                        labelText: "CMND/CCCD",
                        imageField: "assets/icons/icInfor.png"),
                    TextFormFields(
                        title: "Số giấy tờ",
                        labelText: "222222",
                        imageField: "assets/icons/icInfor.png",
                        iconField: "assets/icons/iconClose.png",
                        iconNote: true),
                    TextFormFields(
                        title: "Họ và Tên",
                        labelText: "Nguyễn Khánh Bảo Trâm",
                        imageField: "assets/icons/icInfor.png",
                        iconField: "assets/icons/iconClose.png"),
                    TextFormFields(
                        title: "Ngày sinh",
                        labelText: "06/11/98",
                        imageField: "assets/icons/icBirthday.png",
                        iconField: "assets/icons/iconClose.png"),
                    TextFormRadio(
                        title: "Giới tính",
                        imageField: "assets/icons/icFale.png"),
                    TextFormFields(
                        title: "Quốc tịch",
                        labelText: "Việt Nam",
                        imageField: "assets/icons/national.png"),
                    TextFormFields(
                        title: "Địa chỉ thường trú",
                        labelText: "Quảng Ngãi",
                        imageField: "assets/icons/icAddress.png",
                        iconField: "assets/icons/iconClose.png"),
                    TextFormFields(
                        title: "Ngày cấp",
                        labelText: "06/11",
                        imageField: "assets/icons/icDate.png",
                        iconField: "assets/icons/iconClose.png"),
                    TextFormFields(
                        title: "Nơi hết hạn",
                        labelText: "08/07",
                        imageField: "assets/icons/icDate.png",
                        iconField: "assets/icons/iconClose.png"),
                    TextFormFields(
                        title: "Nơi cấp",
                        labelText: "CA Quang Ngai",
                        imageField: "assets/icons/icAddress.png",
                        iconField: "assets/icons/iconClose.png"),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 16.0, top: 8.0),
                      child: Text(
                        'Hình ảnh xác thực',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF2C84D4),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List<Widget>.generate(imageNoteLists.length,
                              (int index) {
                            return Row(
                              children: [
                                Column(
                                  children: [
                                    Image(
                                        width: 80,
                                        height: 55,
                                        image:
                                            AssetImage(imageNoteLists[index])),
                                    Container(
                                      margin: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        titleLists[index],
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF2C84D4),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            );
                          })),
                    ),
                    CustomButtonBottom(textTitle: 'Xác nhận', method: _moveToVerifySuccessScreen)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
