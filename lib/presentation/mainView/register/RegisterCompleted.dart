import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../AppBloc.dart';
import '../AppState.dart';

class RegisterCompleted extends StatelessWidget {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocListener<AppBloc, AppState>(
        listener: (context, state) {
          if (state is StateCreatePassword) {
            Navigator.of(context).pushNamed('/createpassword');
          }
        },
        child: Scaffold(
          body: Container(
            alignment: Alignment.topCenter,
            color: Colors.white,
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 60.0, bottom: 0.0, left: 10.0, right: 10.0),
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                child: Text(
                  "Chúc mừng",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 0.0, bottom: 0.0, left: 5.0, right: 5.0),
                child: Text(
                  "Quý khách đã đăng ký thành công tài khoản ví điện tử IO",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 40.0, bottom: 0.0, left: 10.0, right: 10.0),
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                child: Icon(
                  Icons.check_circle,
                  size: 60,
                  color: Colors.green,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 30.0, bottom: 00.0, left: 5.0, right: 5.0),
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 0.0, left: 5.0, right: 5.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Theo thông tư ',
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: '23/2019/TT-NHNN',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue)),
                      TextSpan(
                          text:
                          ' để đảm bảo tuân thủ quy định Pháp luật và bảo vệ quyền lợi khách hàng sở hữu ví điện tử',
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(
                      top: 20.0, bottom: 30.0, left: 5.0, right: 5.0),
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 0.0, left: 5.0, right: 5.0),
                  child: Text(
                    "Quý khách vui lòng thực hiện xác thực thông tin chủ Ví và liên kết tài khoản/Thẻ ngân hàng trước khi sử dụng",
                    textAlign: TextAlign.center,
                  )),
              ElevatedButton(
                child: Text('Xác thực tài khoản'),
                onPressed: () => moveToHome(context),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20.0, bottom: 20.0, left: 50.0, right: 50.0),
                child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Divider()
                      ),

                      Text("Hoặc"),

                      Expanded(
                          child: Divider()
                      ),
                    ]
                ),),
              ElevatedButton(
                child: Text('Thực hiện sau'),
                onPressed: () => moveToHome(context),
              ),
            ]),
          ),
        ));
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
