import 'package:flutter/material.dart';

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
                      border: Border.all(
                        color:
                            Colors.grey, //                   <--- border color
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      children: [Icon(Icons.ac_unit_outlined), Text("Điện")],
                    ),
                  ),
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
                      border: Border.all(
                        color:
                            Colors.grey, //                   <--- border color
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      children: [Icon(Icons.ac_unit_outlined), Text("Nước")],
                    ),
                  ),
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
                      border: Border.all(
                        color:
                            Colors.grey, //                   <--- border color
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      children: [Icon(Icons.ac_unit_outlined), Text("Điện thoại cố định")],
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
