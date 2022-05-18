import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tài khoản'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Container(
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
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                          child: Text("Người dùng 1",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, // light
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                          child: Text("0123456789"),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                          child: Text("Chưa xác thực",
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
                border: Border.all(
                  color: Colors.grey, //                   <--- border color
                  width: 2.0,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          size: 48.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 18.0,
                          ),
                          child: Column(
                            children: [
                              Text("Ví IO",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300, // light
                                    fontStyle: FontStyle.italic, // italic
                                  )),
                              Text("Số dư ví (VND)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300, // light
                                    fontStyle: FontStyle.italic, // italic
                                  )),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          size: 48.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 18.0,
                          ),
                          child: Text("Quản lý thẻ/Tài khoản",
                              style: TextStyle(
                                fontWeight: FontWeight.w300, // light
                                fontStyle: FontStyle.italic, // italic
                              )),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          size: 48.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 18.0,
                          ),
                          child: Text("Thanh toán",
                              style: TextStyle(
                                fontWeight: FontWeight.w300, // light
                                fontStyle: FontStyle.italic, // italic
                              )),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
                    height: 1,
                    color: Colors.grey,
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
                border: Border.all(
                  color: Colors.grey, //                   <--- border color
                  width: 2.0,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          size: 48.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 18.0,
                          ),
                          child: Text("Cài đặt",
                              style: TextStyle(
                                fontWeight: FontWeight.w300, // light
                                fontStyle: FontStyle.italic, // italic
                              )),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          size: 48.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 18.0,
                          ),
                          child: Text("Giới thiệu",
                              style: TextStyle(
                                fontWeight: FontWeight.w300, // light
                                fontStyle: FontStyle.italic, // italic
                              )),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          size: 48.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 18.0,
                          ),
                          child: Text("Đăng xuất",
                              style: TextStyle(
                                fontWeight: FontWeight.w300, // light
                                fontStyle: FontStyle.italic, // italic
                              )),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
                    height: 1,
                    color: Colors.grey,
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