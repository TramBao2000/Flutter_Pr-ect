import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoticeBoard extends StatelessWidget {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Thông báo'),
      ),
      body: Container(
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
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        Text("Đăng ký tài khoản",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w300, // light
                              fontStyle: FontStyle.italic, // italic
                            )),
                        Spacer(),
                        Text("Thứ 6 13/05/2022",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w300, // light
                              fontStyle: FontStyle.italic, // italic
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                    child: Text(
                        "Cảm ơn quý khách đã lựa chọn sử dụng dịch vụ Ví điện tử của IO",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // light
                          fontStyle: FontStyle.italic, // italic
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        bottom: 8.0, left: 8.0, right: 8.0),
                    child: Text(
                        "Để có thể sử dụng các dịch vụ do Ví IO cung cấp, Quý khách vui lòng thực hiện xác thực thông tin chủ Ví và liên kết tài khoản/Thẻ ngân hàng trước khi sử dụng"),
                  ),
                ],
              )),
        ]),
      ),
    );
  }

  moveToHome(BuildContext context) {
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => HomeTabBar(),
    //     ));
  }

  moveToLogin(BuildContext context) {
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => Login(),
    //     ));
  }
}
