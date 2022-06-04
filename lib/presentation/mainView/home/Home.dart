import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:getwidget/getwidget.dart';
import 'package:badges/badges.dart';
import 'package:iowallet/presentation/customWidgets/FeatureWidget.dart';
import 'package:iowallet/presentation/mainView/noticeboard/NoticeBoard.dart';

import '../../customWidgets/DialogUtils.dart';

class Home extends StatelessWidget {
  final List<String> imageList = [
    "https://t3.ftcdn.net/jpg/03/15/34/90/360_F_315349043_6ohfFyx37AFusCKZtGQtJR0jqUxhb25Y.jpg",
    "https://t3.ftcdn.net/jpg/03/15/34/90/360_F_315349043_6ohfFyx37AFusCKZtGQtJR0jqUxhb25Y.jpg",
    "https://t3.ftcdn.net/jpg/03/15/34/90/360_F_315349043_6ohfFyx37AFusCKZtGQtJR0jqUxhb25Y.jpg",
    "https://t3.ftcdn.net/jpg/03/15/34/90/360_F_315349043_6ohfFyx37AFusCKZtGQtJR0jqUxhb25Y.jpg",
    "https://t3.ftcdn.net/jpg/03/15/34/90/360_F_315349043_6ohfFyx37AFusCKZtGQtJR0jqUxhb25Y.jpg",
    "https://t3.ftcdn.net/jpg/03/15/34/90/360_F_315349043_6ohfFyx37AFusCKZtGQtJR0jqUxhb25Y.jpg",
  ];
  final List<String> regularfeatureList = [
    "Tính năng 1",
    "Tính năng 2",
    "Tính năng 3",
    "Tính năng 4",
    "Tính năng 5",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                children: [
                  Image(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.width * 0.1,
                      image: AssetImage('assets/photos/pic1.png')),
                  Spacer(),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 0, bottom: 0, left: 7.0, right: 15.0),
                    child: InkWell(
                      child: Badge(
                        badgeContent: Text(
                          '1',
                          style: TextStyle(color: Colors.white),
                        ),
                        child: Icon(Icons.add_alert),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NoticeBoard(),
                            ));
                      },
                    ),
                  ),
                  Container(
                    //   margin: const EdgeInsets.only(top: 10.0, right: 10),
                    child: Column(
                      children: [
                        Text("Xin chào"),
                        Text(
                          "Người dùng 1",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                  //   color: Colors.white,
                  child: Column(
                children: [
                  Container(
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
                          spreadRadius: 5,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ImageSlideshow(
                      /// Width of the [ImageSlideshow].
                      width: double.infinity,

                      /// Height of the [ImageSlideshow].
                      height: 150,

                      /// The page to show when first creating the [ImageSlideshow].
                      initialPage: 0,

                      /// The color to paint the indicator.
                      indicatorColor: Colors.blue,

                      /// The color to paint behind th indicator.
                      indicatorBackgroundColor: Colors.grey,

                      /// The widgets to display in the [ImageSlideshow].
                      /// Add the sample image file into the images folder
                      children:
                          List<Widget>.generate(imageList.length, (index) {
                        return FittedBox(
                          child: Image(image: NetworkImage(imageList[index])),
                          fit: BoxFit.fill,
                        );
                      }),

                      /// Called whenever the page in the center of the viewport changes.
                      onPageChanged: (value) {
                        print('Page changed: $value');
                      },

                      /// Auto scroll interval.
                      /// Do not auto scroll with null or 0.
                      autoPlayInterval: 3000,

                      /// Loops back to first slide.
                      isLoop: true,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 5.0, bottom: 0.0, left: 0.0, right: 0.0),
                      padding: const EdgeInsets.only(top: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6)),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          //                   <--- border color
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Số dư Ví (VND):",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "*******",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue, // light
                                ),
                              ),
                              Icon(
                                Icons.visibility_off,
                                size: 18,
                              )
                            ],
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            height: 1,
                            color: Colors.grey.shade100,
                          ),
                          Container(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: List<Widget>.generate(4, (index) {
                                return Container(
                                  width: 80,
                                  height: 120,
                                  child: FeatureWidget(featureName: 'Chức năng', featureImageAsset: 'assets/photos/pic1.png',),
                                );
                              })),
                            ),
                          )
                        ],
                      )),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 5.0, bottom: 0.0, left: 0.0, right: 0.0),
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6)),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          //                   <--- border color
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: List<Widget>.generate(4, (index) {
                                return Container(
                                  width: 80,
                                  height: 100,
                                  child: FeatureWidget(featureName: 'Chức năng', featureImageAsset: 'assets/photos/pic1.png',),
                                );
                              })),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
                            height: 1,
                            color: Colors.grey.shade100,
                          ),
                          Container(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: List<Widget>.generate(4, (index) {
                                return Container(
                                  width: 80,
                                  height: 100,
                                  child: FeatureWidget(featureName: 'Chức năng', featureImageAsset: 'assets/photos/pic1.png',),
                                );
                              })),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
                            height: 1,
                            color: Colors.grey.shade100,
                          ),
                          Container(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: List<Widget>.generate(4, (index) {
                                return Container(
                                  width: 80,
                                  height: 100,
                                  child: FeatureWidget(featureName: 'Chức năng', featureImageAsset: 'assets/photos/pic1.png',),
                                );
                              })),
                            ),
                          ),
                        ],
                      )),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
