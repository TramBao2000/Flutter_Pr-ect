import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iowallet/presentation/mainView/kyc/InformationVerify.dart';
import 'package:iowallet/presentation/mainView/kyc/TakePortraitsScreen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class GuideVideoSCreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Xác thực tài khoản'),
      ),
      body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Vui lòng thực hiện các thao tác xác thực gương mặt theo hướng dẫn và giữ gương mặt cách khung hình từ 30-40cm',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2C84D4),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20, bottom: 0),
                    height: 190,
                    child: YoutubePlayer(
                      controller: YoutubePlayerController(
                        initialVideoId: 'iLnmTe5Q2Qw',
                        flags: YoutubePlayerFlags(
                          hideControls: false,
                          controlsVisibleAtStart: true,
                          autoPlay: false,
                          mute: false,
                        ),
                      ),
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Color(0xFF2C84D4),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration:
                    BoxDecoration(border: Border.all(color: Color(0xFFE1E6EB))),
                    padding: const EdgeInsets.only(top: 17.0, bottom: 74.0),
                    margin: const EdgeInsets.only(
                      top: 16.0,
                    ),
                    child:
                    Flexible( child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,// set your alignment
                      children: [
                    Expanded(child:
                        Container(
                            padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                            child:
                            Flexible(
                                child:Text(
                              "Môi trường đủ sáng",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF000000),
                              ),
                            ),),),
                    ),
                    Expanded(child:
                        Container(
                            padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                              child:
                              Flexible(
                              child:Text(
                                "Không đeo kính",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF000000),
                                ),
                              ),),),),
                    Expanded(child:
                        Container(
                            padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                              child:
                            Flexible(
                            child:
                            Text(
                                "Không đeo khẩu trang",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF000000),
                                ),
                              ),),),
                    ),
                   ], ),),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 33.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Row(
                            children: [
                              Text(
                                'Tiếp tục',
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
                          onPressed: () => moveToInformationVerifyScreen(context),
                        ),
                      ],
                    ),
                  ),
                ],),)

    ),
    );
  }
  moveToTakePortraitsScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => takePortraitsCapture(),
        ));
  }
  moveToInformationVerifyScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InformationVerifyWidget(),
        ));
  }
}
