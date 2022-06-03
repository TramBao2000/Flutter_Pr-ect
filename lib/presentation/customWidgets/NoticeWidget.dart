import 'package:flutter/material.dart';

class NoticeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
            height: 1,
            color: Colors.grey,
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                child: Row(
                  children: [
                    Text("Xác thực tài khoản",
                        style: TextStyle(
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.w900,
                          fontSize: 15.0,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 3.0),
                              blurRadius: 2.0,
                              color: Color.fromARGB(30, 0, 0, 0),
                            ),
                          ],
                          // lightitalic
                        )),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 1.0,
                            top: 2.0,
                            child: Icon(Icons.mail_outline_rounded,
                                color: Colors.black12),
                          ),
                          Icon(Icons.mail_outline_rounded),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text("13/05/2022 10:00:00",
                        style: TextStyle(
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.w900,
                          fontSize: 15.0,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 3.0),
                              blurRadius: 2.0,
                              color: Color.fromARGB(30, 0, 0, 0),
                            ),
                          ],
                          // lightitalic
                        )),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                child: Text(
                  "Để có thể sử dụng các dịch vụ do Ví IO cung cấp, Quý khách vui lòng thực hiện xác thực thông tin chủ Ví và liên kết tài khoản/Thẻ ngân hàng trước khi sử dụng",
                  style: TextStyle(
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0, 3.0),
                        blurRadius: 2.0,
                        color: Color.fromARGB(30, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
