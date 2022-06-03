import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iowallet/presentation/mainView/AppBloc.dart';
import 'package:iowallet/presentation/mainView/AppEvents.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../AppState.dart';

class OTPVerify extends StatelessWidget {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocListener<AppBloc, AppState>(
        listener: (context, state) {
          if (state is StateRegisterCompleted) {
            Navigator.of(context).pushNamed('/registercompleted');
          }
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Xác thực OTP'),
          ),
          body: Container(
            color: Colors.white,
            child: Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height * 1.5,
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Text(
                          "Vui lòng nhập mã xác thực (OTP) được gửi đến số điện thoại của Quý khách",
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "0123456789",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    OTPTextField(
                      length: 6,
                      width: MediaQuery.of(context).size.width,
                      fieldWidth: 40,
                      style: TextStyle(fontSize: 20),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                      onCompleted: (pin) {
                        print("Completed: " + pin);
                      },
                    ),
                    Container(
                        margin: const EdgeInsets.only(
                            top: 8.0, bottom: 8.0, left: 40.0, right: 40.0),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(Icons.new_releases, color: Colors.red,),
                              Expanded(child:
                              Text(
                                "Vui lòng nhập mã OTP đã được gửi đến SDT của Quý khách",
                                style: TextStyle(color: Colors.red),
                                maxLines: 10,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ))
                            ],
                          ),
                        )),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Hiệu lực của mã:  ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          children: const <TextSpan>[
                            TextSpan(
                                text: '118 giây',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: Text("Không nhận được mã OTP?"),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 0.0),
                      child: TextButton(
                        child: Text(
                          'Gửi lại mã',
                          style: TextStyle(color: Colors.grey),
                        ),
                        onPressed: () => moveToLogin(context),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        child: Text('Xác nhận'),
                        onPressed: () {
                          context.read<AppBloc>().add(EventRegisterCompleted());
                        },
                      ),
                    ),
                  ]),
                ),
              ),
            ),
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
