import 'package:flutter/material.dart';
import 'package:iowallet/generated/l10n.dart';
import 'package:iowallet/presentation/mainView/kyc/PreStartKYC.dart';

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
          InkWell(
            child: Container(
                margin: const EdgeInsets.only(
                    top: 7.0, bottom: 7.0, left: 7.0, right: 7.0),
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
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreStartKYC(),
                  ));
            },
          ),
          Container(
              margin: const EdgeInsets.only(
                  top: 0.0, bottom: 7.0, left: 7.0, right: 7.0),
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
                  Container(
                    margin: const EdgeInsets.only(
                        top: 7.0, bottom: 7.0, left: 0.0, right: 0.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Text("Loại giấy tờ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, // light
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                          child: Text("CMND/CCCD",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red // light
                                  )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 7.0, bottom: 7.0, left: 0.0, right: 0.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Text("Số giấy tờ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, // light
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                          child: Text("*******456",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red // light
                                  )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 7.0, bottom: 7.0, left: 0.0, right: 0.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Text("Ngày sinh",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, // light
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                          child: Text("01/01/1985",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red // light
                                  )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 7.0, bottom: 7.0, left: 0.0, right: 0.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Text("Họ và tên",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, // light
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                          child: Text("Người dùng 1",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red // light
                                  )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 7.0, bottom: 7.0, left: 0.0, right: 0.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Text("Địa chỉ thường trú",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, // light
                              )),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                            child: Text(
                              "47 Điện Biên Phủ, P.Dakao, Quận 1, TP.HCM",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red // light
                                  ),
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
          Container(
              margin: const EdgeInsets.only(
                  top: 0.0, bottom: 7.0, left: 7.0, right: 7.0),
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
                  Container(
                    margin: const EdgeInsets.only(
                        top: 7.0, bottom: 7.0, left: 0.0, right: 0.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Row(
                            children: [
                              Text("Email ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold, // light
                                  )),
                              Icon(
                                Icons.check_circle,
                                color: Colors.blue,
                                size: 14,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                          child: Text("ABC@gmail.com",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red // light
                                  )),
                        ),
                        Spacer(),
                        Icon(
                          Icons.drive_file_rename_outline,
                          color: Colors.blue.shade400,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 7.0, bottom: 7.0, left: 0.0, right: 0.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Text("Địa chỉ liên hệ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, // light
                              )),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                            child: Text(
                              "47 Điện Biên Phủ, P.Dakao, Quận 1, TP.HCM",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red // light
                                  ),
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                     //   Spacer(),
                        Icon(
                          Icons.drive_file_rename_outline,
                          color: Colors.blue.shade400,
                        )
                      ],
                    ),
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
