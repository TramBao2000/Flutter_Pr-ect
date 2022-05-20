import 'package:flutter/material.dart';
import 'package:iowallet/generated/l10n.dart';

class ListTaskWithMoneyBanking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Ví IO'),
        ),
        body: Column(
          children: [
            Container(
                width: double.maxFinite,
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
                    Image(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.15,
                        image: AssetImage('assets/photos/pic1.png')),
                    Text("Số dư ví VND: *****",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue // light
                            ))
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
                    width: 1.0,
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
                            child: Text("Nạp tiền",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500, // light
                                )),
                          ),
                          Spacer(),
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
                            child: Text("Rút tiền",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                          Spacer(),
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
                            child: Text("Chuyển tiền",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500, // italic
                                )),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}
