import 'package:flutter/material.dart';

import '../../customWidgets/FeatureWidget.dart';

class ListBillCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Thanh toán'),
      ),
      body: Container(
        padding: const EdgeInsets.only(
            top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Danh sách các nhà cung cấp"),
            Container(
              child: Row(
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
