import 'package:flutter/material.dart';
import 'package:iowallet/presentation/mainView/account/InfoPersonal.dart';
import 'package:iowallet/presentation/mainView/account/ListBillCheckout.dart';
import 'package:iowallet/presentation/mainView/banking/ListAccountBank.dart';
import 'package:iowallet/presentation/mainView/banking/ListTaskWithMoneyBanking.dart';

import '../../../generated/l10n.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).account),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          InkWell(
            child: Container(
                margin: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                alignment: Alignment.centerLeft,
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
                            child: Text("0123456789"),
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
                    builder: (context) => InfoPersonal(),
                  ));
            },
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
                  color: Colors.grey, //                   <--- border color
                  width: 1.0,
                ),
              ),
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                      child: InkWell(
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time_outlined,
                              size: 48.0,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.only(
                                left: 18.0,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 8.0,
                                        bottom: 8.0,
                                        right: 8.0),
                                    child: Text(S.of(context).wallet_name,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500, // light
                                        )),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 8.0,
                                        bottom: 8.0,
                                        right: 8.0),
                                    child: Text(S.of(context).wallet_balance,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500, // light
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ListTaskWithMoneyBanking(),
                              ));
                        },
                      )),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                      child: InkWell(
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
                              child: Text(S.of(context).card_manage,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500, // light
                                  )),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ListAccountBank(),
                              ));
                        },
                      )),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                      child: InkWell(
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
                              child: Text(S.of(context).payment,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500, // light
                                  )),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ListBillCheckout(),
                              ));
                        },
                      )),
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
                          child: Text(S.of(context).setup,
                              style: TextStyle(
                                fontWeight: FontWeight.w500, // light
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
                          child: Text(S.of(context).introduce,
                              style: TextStyle(
                                fontWeight: FontWeight.w500, // light
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
                          child: Text(S.of(context).sign_out,
                              style: TextStyle(
                                fontWeight: FontWeight.w500, // light// italic
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
