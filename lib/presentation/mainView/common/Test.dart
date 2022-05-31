import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationVerifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(36.0), // here the desired height
        child: AppBar(
          centerTitle: true,
          title: Text("Xác thực tài khoản",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset("../assets/icon/iconBack.png"),
          ),
          backgroundColor: Color(0xFF2C84D4),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child:
            Row(children: [
              Text('Thông tin của Qúy Khách',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF2C84D4),
                ),
              ),
            ],),),
          Container(child:
          Column( children: [
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  IconButton (
                      icon: Image.asset("../assets/icon/icInfor.png"),
                      onPressed: () {
                        print("Pressed");
                      },
                      iconSize: 15
                  ),
                  Column(
                    children: [
                      Text(
                        "Loại giấy tờ",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Container(child:
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Name'
                        ),
                      ),)
                    ],)
                ],
              ),
            ),
          ],),)

        ],),
      ),
    );
  }
}