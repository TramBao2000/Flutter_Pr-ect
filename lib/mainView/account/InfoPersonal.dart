import 'package:flutter/material.dart';
import 'package:iowallet/generated/l10n.dart';
import 'package:iowallet/mainView/common/OTPVerify.dart';
import 'package:iowallet/mainView/kyc/PreStartKYC.dart';

class InfoPersonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Thông tin cá nhân'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          InkWell(child:  Container(
              margin: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 8,
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 48, // Image radius
                    backgroundImage: NetworkImage(
                        'https://www.dungplus.com/wp-content/uploads/2019/12/girl-xinh-1-480x600.jpg'),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                          child: Text("NGƯỜI DÙNG 1",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, // light
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                          child: Text(
                              S.of(context).account_state_unauthenticated,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red // light
                              )),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              )),
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PreStartKYC(),
                ));
          },),

          Container(
              margin: const EdgeInsets.only(
                  top: 0.0, bottom: 10.0, left: 10.0, right: 10.0),
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 8,
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Nội dung 1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // light
                          )),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                        child: Text("Chưa xác thực",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red // light
                                )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Nội dung 1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // light
                          )),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                        child: Text("Chưa xác thực",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red // light
                                )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Nội dung 1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // light
                          )),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                        child: Text("Chưa xác thực",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red // light
                                )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Nội dung 1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // light
                          )),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                        child: Text("Chưa xác thực",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red // light
                            )),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
              margin: const EdgeInsets.only(
                  top: 0.0, bottom: 10.0, left: 10.0, right: 10.0),
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 8,
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Nội dung 1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // light
                          )),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                        child: Text("Chưa xác thực",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red // light
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Nội dung 1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // light
                          )),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                        child: Text("Chưa xác thực",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red // light
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Nội dung 1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // light
                          )),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                        child: Text("Chưa xác thực",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red // light
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Nội dung 1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // light
                          )),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                        child: Text("Chưa xác thực",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red // light
                            )),
                      ),
                    ],
                  ),
                ],
              )),
        ]),
      ),
    );
  }

  moveToExercise(BuildContext context) {
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => IndexPage(),
    //     ));
  }

  moveToHome(BuildContext context) {
    Navigator.of(context).pop();
  }
}

