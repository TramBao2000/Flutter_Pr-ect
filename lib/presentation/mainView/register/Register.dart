import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Register extends StatelessWidget {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Đăng ký tài khoản mới'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Text("Số điện thoại: 0123456789"),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(fontSize: 14, color: Colors.grey.shade400),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.red,
                  )),
              suffixIcon: IconButton(
                onPressed: _controller.clear,
                icon: Icon(Icons.highlight_remove_outlined),
              ),
            ),
          ),
          Row(
            children: [
              Icon(Icons.whatshot_sharp),
              Text(
                  "Số điện thoại không chính xác. Quý khách vui lòng kiểm tra lại",
                  style: TextStyle(color: Colors.red))
            ],
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(fontSize: 14, color: Colors.grey.shade400),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.red,
                  )),
              suffixIcon: IconButton(
                onPressed: _controller.clear,
                icon: Icon(Icons.highlight_remove_outlined),
              ),
            ),
          ),
          Row(
            children: [
              Icon(Icons.whatshot_sharp),
              Text(
                  "Số điện thoại không chính xác. Quý khách vui lòng kiểm tra lại",
                  style: TextStyle(color: Colors.red))
            ],
          ),
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
                ElevatedButton(
                  child: Text('Điều khoản và chính sách'),
                  onPressed: () => moveToHome(context),
                ),
                Icon(Icons.zoom_out_map),
                ElevatedButton(
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
