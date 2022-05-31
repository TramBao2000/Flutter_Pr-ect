import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterCompleted extends StatelessWidget {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        color: Colors.white,
        child: Column(children: [
          Text("Chúc mừng"),
          Text("Quý khách đã đăng ký thành công tài khoản ví điện tử IO"),
          Icon(Icons.zoom_out_map),
          Text("Theo thông tư 23/2019/TT-NHNN, để đảm bảo tuân thủ quy định Pháp luật và bảo vệ quyền lợi khách hàng sở hữu ví điện tử. Quý khách vui lòng thực hiện xác thực thông tin chủ Ví và liên kết tài khoản/Thẻ ngân hàng trước khi sử dụng"),
          ElevatedButton(
            child: Text('Xác thực tài khoản'),
            onPressed: () => moveToHome(context),
          ),

          ElevatedButton(
            child: Text('Thực hiện sau'),
            onPressed: () => moveToHome(context),
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
