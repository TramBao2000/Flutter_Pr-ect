import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:iowallet/mainView/noticeboard/NoticeBoard.dart';

class Home extends StatelessWidget {
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
     //   color: Colors.white,
        child: Column(children: [
          Row(
            children: [
              Image(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.15,
                  height: MediaQuery
                      .of(context)
                      .size
                      .width * 0.1,
                  image: AssetImage('assets/photos/pic1.png')),
              Spacer(),
              InkWell(
                child:               Icon(Icons.add_alert),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NoticeBoard(),
                      ));
                },
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [Text("Xin chào"), Text("Người dùng 1")],
                ),
              ),
            ],
          ),

          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: GFCarousel(
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    pagerSize: 100,
                    items: imageList.map(
                          (url) {
                        return Container(
                          margin: EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                                Radius.circular(5.0)),
                            child: Image.network(url,
                                fit: BoxFit.cover, width: 1000.0),
                          ),
                        );
                      },
                    ).toList(),
                    onPageChanged: (index) {
                      // setState(() {
                      //   index;
                      // });
                    },
                  ),
                ),
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
                        color: Colors.grey,
                        //                   <--- border color
                        width: 2.0,
                      ),
                    ),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Số dư Ví (VND):",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                          Text("123456",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue, // light
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
                        height: 1,
                        color: Colors.grey,
                      ),
                    ],)),
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
                        color: Colors.grey,
                        //                   <--- border color
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
                        color: Colors.grey,
                        //                   <--- border color
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
                        color: Colors.grey,
                        //                   <--- border color
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
              ],
            ),
          ),
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
