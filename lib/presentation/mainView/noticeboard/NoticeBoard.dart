import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class NoticeBoard extends StatefulWidget {
  const NoticeBoard({Key? key}) : super(key: key);

  @override
  State<NoticeBoard> createState() => _MyThreeOptionsState();
}

class _MyThreeOptionsState extends State<NoticeBoard> {
  int? _value = 1;
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Thông báo'),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Wrap(
                children: List<Widget>.generate(
                  4,
                  (int index) {
                    return Container(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                      child: ChoiceChip(
                        label: Text('Hoạt động $index'),
                        backgroundColor: Colors.transparent,
                        shape:
                            StadiumBorder(side: BorderSide(color: Colors.blue)),
                        selected: _value == index,
                        onSelected: (bool selected) {
                          setState(() {
                            _value = selected ? index : null;
                          });
                        },
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
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
                                      color: Color.fromARGB(80, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                            Icon(Icons.attach_email_sharp),
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
                                      color: Color.fromARGB(80, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 8.0, left: 8.0, right: 8.0),
                        child: Text(
                          "Để có thể sử dụng các dịch vụ do Ví IO cung cấp, Quý khách vui lòng thực hiện xác thực thông tin chủ Ví và liên kết tài khoản/Thẻ ngân hàng trước khi sử dụng",
                          style: TextStyle(
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 3.0),
                                blurRadius: 2.0,
                                color: Color.fromARGB(80, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
                                      color: Color.fromARGB(50, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                            Icon(Icons.attach_email_sharp),
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
                                      color: Color.fromARGB(80, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 8.0, left: 8.0, right: 8.0),
                        child: Text(
                          "Để có thể sử dụng các dịch vụ do Ví IO cung cấp, Quý khách vui lòng thực hiện xác thực thông tin chủ Ví và liên kết tài khoản/Thẻ ngân hàng trước khi sử dụng",
                          style: TextStyle(
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 3.0),
                                blurRadius: 2.0,
                                color: Color.fromARGB(80, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
                                      color: Color.fromARGB(80, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                            Icon(Icons.attach_email_sharp),
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
                                      color: Color.fromARGB(80, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 8.0, left: 8.0, right: 8.0),
                        child: Text(
                          "Để có thể sử dụng các dịch vụ do Ví IO cung cấp, Quý khách vui lòng thực hiện xác thực thông tin chủ Ví và liên kết tài khoản/Thẻ ngân hàng trước khi sử dụng",
                          style: TextStyle(
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 3.0),
                                blurRadius: 2.0,
                                color: Color.fromARGB(80, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
                                  fontStyle: FontStyle.italic,
                                  fontSize: 15.0,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2.0, 3.0),
                                      blurRadius: 2.0,
                                      color: Color.fromARGB(80, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                            Icon(Icons.attach_email_sharp),
                            Spacer(),
                            Text("13/05/2022 10:00:00",
                                style: TextStyle(
                                  color: Colors.blue.shade800,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15.0,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2.0, 3.0),
                                      blurRadius: 2.0,
                                      color: Color.fromARGB(80, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 8.0, left: 8.0, right: 8.0),
                        child: Text(
                          "Để có thể sử dụng các dịch vụ do Ví IO cung cấp, Quý khách vui lòng thực hiện xác thực thông tin chủ Ví và liên kết tài khoản/Thẻ ngân hàng trước khi sử dụng",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 3.0),
                                blurRadius: 2.0,
                                color: Color.fromARGB(80, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
                                  fontStyle: FontStyle.italic,
                                  fontSize: 15.0,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2.0, 3.0),
                                      blurRadius: 2.0,
                                      color: Color.fromARGB(80, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                            Icon(Icons.attach_email_sharp),
                            Spacer(),
                            Text("13/05/2022 10:00:00",
                                style: TextStyle(
                                  color: Colors.blue.shade800,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15.0,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2.0, 3.0),
                                      blurRadius: 2.0,
                                      color: Color.fromARGB(80, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 8.0, left: 8.0, right: 8.0),
                        child: Text(
                          "Để có thể sử dụng các dịch vụ do Ví IO cung cấp, Quý khách vui lòng thực hiện xác thực thông tin chủ Ví và liên kết tài khoản/Thẻ ngân hàng trước khi sử dụng",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 3.0),
                                blurRadius: 2.0,
                                color: Color.fromARGB(80, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
                                  fontStyle: FontStyle.italic,
                                  fontSize: 15.0,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2.0, 3.0),
                                      blurRadius: 2.0,
                                      color: Color.fromARGB(80, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                            Icon(Icons.attach_email_sharp),
                            Spacer(),
                            Text("13/05/2022 10:00:00",
                                style: TextStyle(
                                  color: Colors.blue.shade800,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15.0,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2.0, 3.0),
                                      blurRadius: 2.0,
                                      color: Color.fromARGB(80, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 8.0, left: 8.0, right: 8.0),
                        child: Text(
                          "Để có thể sử dụng các dịch vụ do Ví IO cung cấp, Quý khách vui lòng thực hiện xác thực thông tin chủ Ví và liên kết tài khoản/Thẻ ngân hàng trước khi sử dụng",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 3.0),
                                blurRadius: 2.0,
                                color: Color.fromARGB(80, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
                                  fontStyle: FontStyle.italic,
                                  fontSize: 15.0,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2.0, 3.0),
                                      blurRadius: 2.0,
                                      color: Color.fromARGB(80, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                            Icon(Icons.attach_email_sharp),
                            Spacer(),
                            Text("13/05/2022 10:00:00",
                                style: TextStyle(
                                  color: Colors.blue.shade800,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15.0,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2.0, 3.0),
                                      blurRadius: 2.0,
                                      color: Color.fromARGB(80, 0, 0, 0),
                                    ),
                                  ],
                                  // lightitalic
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 8.0, left: 8.0, right: 8.0),
                        child: Text(
                          "Để có thể sử dụng các dịch vụ do Ví IO cung cấp, Quý khách vui lòng thực hiện xác thực thông tin chủ Ví và liên kết tài khoản/Thẻ ngân hàng trước khi sử dụng",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 3.0),
                                blurRadius: 2.0,
                                color: Color.fromARGB(80, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            )
          ],
        ));
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
