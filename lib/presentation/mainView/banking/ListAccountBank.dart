import 'package:flutter/material.dart';
import 'package:iowallet/generated/l10n.dart';

class ListAccountBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Liên kết ngân hàng'),
      ),
      body: Container(
        height: double.infinity,
          color: Colors.white,
          child: Column(
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
                    color: Colors.grey.shade300, //                   <--- border color
                    width: 1.0,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 8.0),
                      child: Text(
                          "Thực hiện liên kết thẻ/Tài khoản ngân hàng để trải nghiệm các dịch vụ của Ví IO",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blue // light
                              )),
                    ),
                    Container(
                      width: 120,
                      child: TextButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.add_circle,
                              size: 14,
                            ),
                            Text("Thêm liên kết")
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          side: BorderSide(
                            width: 1.0,
                            color: Colors.blue,
                          ),
                          primary: Colors.white,
                          onPrimary: Colors.black,
                        ),
                        onPressed: () => moveToHome(context),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                child: InputDecorator(
                  decoration: InputDecoration(
                    label: Text("Ngân hàng đã liên kết (0)",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.blue // light
                            )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: SizedBox(
                    child: Container(
                    margin: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18)),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        //                   <--- border color
                        width: 1.0,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 8.0),
                      child: Text(
                          "Quý khách chưa thực hiện liên kết thẻ/tài khoản ngân hàng",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blue // light
                          )),
                    ),
                  ),),
                ),
              ),
            ],
          )),
    );
  }

  moveToHome(BuildContext context) {
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => HomeTabBar(),
    //     ));
  }
}
