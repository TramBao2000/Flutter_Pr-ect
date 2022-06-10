import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iowallet/presentation/customWidgets/CustomButtonBottom.dart';
import 'package:iowallet/presentation/mainView/kyc/FrontCaptureScreen.dart';
import 'package:group_radio_button/group_radio_button.dart';

class ChooseDocumentTypeForKYC extends StatefulWidget {
  ChooseDocumentTypeForKYC({Key? key}) : super(key: key);

  @override
  _ChooseDocumentTypeForKYCState createState() =>
      _ChooseDocumentTypeForKYCState();
}

class _ChooseDocumentTypeForKYCState extends State<ChooseDocumentTypeForKYC> {
  String _verticalGroupValue = "CCCD/CMND";

  List<String> _status = ["CCCD/CMND", "Hộ chiếu"];
  final List<String> imageNoteLists = [
    "assets/icons/icTick.png",
    "assets/icons/icSun.png",
    "assets/icons/icTick.png",
    "assets/icons/icTick.png",
    "assets/icons/icTick.png",
    "assets/icons/icTick.png",
  ];
  final List<String> noteLists = [
    "Giấy tờ gốc, nguyên vẹn và còn hiệu lực. Không sử dụng giấy tờ photo hay scan",
    "Đảm bảo môi trường chụp đủ sáng để hình ảnh được rõ nét",
    "Đảm bảo camera hoạt động, không bị mờ, bụi",
    "Không để ánh sáng loá vào giấy tờ khi chụp",
    "Không chụp giấy tờ bị mất góc, quăn mép, bị nhoè",
    "Không để ngón tay đè vào giấy tờ khi chụp",
  ];

  void _moveToFrontCaptureScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => frontCapture(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(36.0), // here the desired height
        child: AppBar(
          centerTitle: true,
          title: Text(
            'Trạng thái tài khoản',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/iconBack.png"),
          ),
          backgroundColor: Color(0xFF2C84D4),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Color(0xFFE1E6EB))),
                padding: const EdgeInsets.all(5.0),
                margin: const EdgeInsets.only(
                  top: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quý khách vui lòng chọn 1 trong các loại giấy tờ sau để thực hiện xác thực tài khoản:',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF004AAD),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        RadioGroup<String>.builder(
                          direction: Axis.horizontal,
                          groupValue: _verticalGroupValue,
                          horizontalAlignment: MainAxisAlignment.spaceAround,
                          onChanged: (value) => setState(() {
                            if (value != null) {
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
                    ),
                  ],
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Color(0xFFE1E6EB))),
                padding: const EdgeInsets.all(5.0),
                margin: const EdgeInsets.only(
                  top: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Expanded(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Lưu ý: Ưu tiên cung cấp CMND/CCCD, trường hợp không có CMND/CCCD, vui lòng cung cấp thông tin Hộ chiếu Việt Nam',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      child: Column(
                        children: List<Widget>.generate(9, (int index) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 16.0),
                            child: Row(
                              children: [
                                IconButton(
                                    icon:
                                        Image.asset("assets/icons/icTick.png"),
                                    onPressed: () {
                                      print("Pressed");
                                    },
                                    iconSize: 15),
                                Flexible(
                                    child: Text(
                                  "Giấy tờ gốc, nguyên vẹn và còn hiệu lực. Không sử dụng giấy tờ photo hay scan",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF000000),
                                  ),
                                ))
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                    CustomButtonBottom(textTitle: "Bắt đầu xác thực", method: _moveToFrontCaptureScreen)
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
