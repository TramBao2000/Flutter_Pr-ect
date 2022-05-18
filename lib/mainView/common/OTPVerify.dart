import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPVerify extends StatelessWidget {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Xác thực OTP'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child:  Text("Vui lòng nhập mã xác thực (OTP) được gửi đến số điện thoại của Quý khách"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child:  Text("0123456789"),
          ),
          Row(children: [
            Icon(Icons.whatshot_sharp),
            Text("Vui lòng nhập mã OTP đã được gửi đến SDT của Quý khách",
                style: TextStyle(
                    color: Colors.red
                ))
          ],),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child:  Text("Hiệu lực của mã: 118 giây"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child:  Text("Không nhận được mã OTP?"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: ElevatedButton(
              child: Text('Gửi lại mã'),
              onPressed: () => moveToLogin(context),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: ElevatedButton(
              child: Text('Xác nhận'),
              onPressed: () => moveToLogin(context),
            ),
          ),
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

