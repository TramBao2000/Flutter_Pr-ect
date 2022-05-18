import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iowallet/mainView/home/HomeTabBar.dart';

import 'login/Login.dart';

class Start extends StatelessWidget {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('IO Media'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
            child: Row(
              children: [
                TextButton(
                  child: Text(
                    'Tìm hiểu về Ví IO',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onPressed: () => moveToHome(context),
                ),
                Spacer(),
                ElevatedButton(
                  child: Row(children: [
                    Icon(Icons.highlight_remove_outlined),
                    Text("Hỗ trợ")
                  ],),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: BorderSide(width: 3.0, color: Colors.green,),
                      primary: Colors.white,
                      onPrimary: Colors.green,
                    ),
                  onPressed: () => moveToHome(context),
                ),
              ],
            ),
          ),
          Image(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.13,
              image: AssetImage('assets/photos/pic1.png')),
          Container(
            margin: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 80.0, right: 80.0),
            child: TextField(
              controller: _controller,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "nhập số điện thoại",
                suffixIcon: IconButton(
                  onPressed: _controller.clear,
                  icon: Icon(Icons.highlight_remove_outlined),
                ),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              maxLength: 10, // Only numbers can be entered
            ),
          ),
          Container(
              margin: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 40.0, right: 40.0),
              child: Center(
                child: Row(
                  children: [
                    Icon(Icons.whatshot_sharp),
                    Text(
                      "Số điện thoại không chính xác. Quý khách vui lòng kiểm tra lại",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
              )),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: ElevatedButton(
              child: Text('Tiếp tục'),
              onPressed: () => moveToLogin(context),
            ),
          ),
          Spacer(),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text('Điều khoản và chính sách'),
                  onPressed: () => moveToHome(context),
                ),
                Icon(Icons.arrow_upward_sharp),
                TextButton(
                  child: Text('Hướng dẫn sử dụng'),
                  onPressed: () => moveToHome(context),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  moveToHome(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeTabBar(),
        ));
  }

  moveToLogin(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ));
  }
}
