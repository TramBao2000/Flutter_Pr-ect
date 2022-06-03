import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:iowallet/presentation/mainView/AppBloc.dart';
import 'package:iowallet/presentation/mainView/AppEvents.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../AppState.dart';

class CreatePassword extends StatefulWidget {
  @override
  _CreatePasswordState createState() => _CreatePasswordState();
}
class _CreatePasswordState extends State<CreatePassword> {
  var _controller = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var currentText;
    var textEditingController;
    var errorController;
    return BlocListener<AppBloc, AppState>(
        listener: (context, state) {
          if (state is StateOTPVerify) {
            Navigator.of(context).pushNamed('/otpverify');
          }
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Thiết lập mật khẩu'),
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
                      margin: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                      child: Text("Tạo mật khẩu cho ví",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),),

                    Container(
                      margin: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                      child: PinCodeTextField(
                        length: 6,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        textStyle: TextStyle(color: Colors.black),
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.underline,
                          borderRadius: BorderRadius.circular(10),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          selectedColor: Colors.red,
                          activeFillColor: Colors.grey.shade200,
                          inactiveFillColor: Colors.grey.shade200,
                          errorBorderColor: Colors.grey,
                          selectedFillColor: Colors.grey.shade400,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        backgroundColor: Colors.white,
                        enableActiveFill: true,
                        errorAnimationController: errorController,
                        controller: textEditingController,
                        onCompleted: (v) {
                          print("Completed");
                        },
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        }, appContext: context,
                      ),),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                      child: Text("Xác nhận mật khẩu",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                      child: PinCodeTextField(
                        length: 6,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        textStyle: TextStyle(color: Colors.black),
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.underline,
                          borderRadius: BorderRadius.circular(10),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          selectedColor: Colors.red,
                          activeFillColor: Colors.grey.shade200,
                          inactiveFillColor: Colors.grey.shade200,
                          errorBorderColor: Colors.grey,
                          selectedFillColor: Colors.grey.shade400,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        backgroundColor: Colors.white,
                        enableActiveFill: true,
                        errorAnimationController: errorController,
                        controller: textEditingController,
                        onCompleted: (v) {
                          print("Completed");
                        },
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        }, appContext: context,
                      ),),
                    Container(
                      margin: const EdgeInsets.only(top: 30.0),
                      child: ElevatedButton(
                        child: Text('Xác nhận'),
                        onPressed: (){
                          context.read<AppBloc>().add(EventOTPVerify());
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
