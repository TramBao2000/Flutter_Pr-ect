import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iowallet/presentation/mainView/kyc/FrontCaptureScreen.dart';

class ChooseDocumentTypeForKYC extends StatelessWidget {
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
      body:
    SingleChildScrollView(
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
                            Expanded(child: Text('CMND'))
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
                            Expanded(child: Text('CCCD'))
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
                            Expanded(
                              child: Text('Hộ Chiếu'),
                            )
                          ],
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
                          child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Flexible(
                          child:
                            Text(
                              'Lưu ý: Ưu tiên cung cấp CMND/CCCD, trường hợp không có CMND/CCCD, vui lòng cung cấp thông tin Hộ chiếu Việt Nam',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          ],
                        ),)),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
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
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: [
                              IconButton(
                                  icon:
                                      Image.asset("assets/icons/icSun.png"),
                                  onPressed: () {
                                    print("Pressed");
                                  },
                                  iconSize: 15),
                              Flexible(
                                  child: Text(
                                "Đảm bảo môi trường chụp đủ sáng để hình ảnh được rõ nét",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF000000),
                                ),
                              ))
                            ],
                          ),
                        ),
                        Container(
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
                                "Đảm bảo camera hoạt động, không bị mờ, bụi",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF000000),
                                ),
                              ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Image.asset("assets/icons/icTick.png",
                                    width: 33, height: 27),
                                onPressed: () {
                                  print("Pressed");
                                },
                              ),
                              Flexible(
                                  child: Text(
                                "Không để ánh sáng loá vào giấy tờ khi chụp",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF000000),
                                ),
                              ))
                            ],
                          ),
                        ),
                        Container(
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
                                "Không chụp giấy tờ bị mất góc, quăn mép, bị nhoè",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF000000),
                                ),
                              ))
                            ],
                          ),
                        ),
                        Container(
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
                                "Không để ngón tay đè vào giấy tờ khi chụp",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF000000),
                                ),
                              ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
                          'Bắt đầu xác thực',
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
                    onPressed: () => moveToFrontCaptureScreen(context),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
    );
  }

  moveToFrontCaptureScreen(BuildContext context) {
    Navigator.push(
       context,
        MaterialPageRoute(
          builder: (context) => frontCapture(),
        ));
  }
}
