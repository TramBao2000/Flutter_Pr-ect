import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iowallet/mainView/common/ForgotPassword.dart';
import 'package:iowallet/mainView/home/HomeTabBar.dart';

class Login extends StatelessWidget {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Đăng nhập'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
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
          Text("Xin chào"),
          Text("Nguyễn Tiến Truyền"),
          CircleAvatar(
            radius: 48, // Image radius
            backgroundImage: NetworkImage(
                'https://www.dungplus.com/wp-content/uploads/2019/12/girl-xinh-1-480x600.jpg'),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50.0),
            alignment: Alignment.center,
            child: TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              obscureText: true,
              obscuringCharacter: 'o',
              textAlign: TextAlign.center,
              maxLength: 6,
              decoration: InputDecoration(
                label: const Center(
                  child: Text("Nhập mật khẩu để đăng nhập"),
                ),
                labelStyle:
                    TextStyle(fontSize: 14, color: Colors.grey.shade400),
                hintText: 'Password',
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
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // added line
                  mainAxisSize: MainAxisSize.min,
                  // added line
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.visibility_off_rounded),
                      onPressed: () {},
                    ),
                    IconButton(
                      onPressed: _controller.clear,
                      icon: Icon(Icons.highlight_remove_outlined),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text('Quên mật khẩu ?'),
                  onPressed: () => moveToForgotPassword(context),
                ),
                Spacer(),
                TextButton(
                  child: Text('Đổi SĐT'),
                  onPressed: () => goBack(context),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: ElevatedButton(
              child: Text('Đăng nhập'),
              onPressed: () => moveToHome(context),
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
  moveToForgotPassword(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ForgotPassword(),
        ));
  }
  goBack(BuildContext context) {
    Navigator.of(context).pop();
  }
}
