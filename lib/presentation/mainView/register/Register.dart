import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:iowallet/common/network/RequestAPI.dart';
import 'package:iowallet/common/utils/AppConstant.dart';
import 'package:iowallet/model/request_and_reponse/Data.dart';
import 'package:iowallet/model/request_and_reponse/Email.dart';
import 'package:iowallet/presentation/mainView/AppBloc.dart';
import 'package:iowallet/presentation/mainView/AppEvents.dart';

import '../AppState.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var _controller = TextEditingController();
  bool isChecked = false;

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
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Đăng ký tài khoản mới'),
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
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        border: Border.all(
                          color: Colors.blue.shade100,
                          //                   <--- border color
                          width: 1.0,
                        ),
                      ),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'Chào mừng ',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: '01234567891',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue)),
                            TextSpan(
                                text:
                                    ' đến với Ví điện tử IO. Quý khách vui lòng nhập thông tin để đăng ký tài khoản',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 0.0, bottom: 0.0, left: 40.0, right: 40.0),
                      child: TextField(
                        controller: _controller,
                        //  textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Nhập họ và tên (*)",
                          suffixIcon: IconButton(
                            onPressed: _controller.clear,
                            icon: Icon(Icons.highlight_remove_outlined),
                          ),
                        ),
                        keyboardType: TextInputType.name,
                        maxLength: 100, // Only numbers can be entered
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(
                            top: 0.0, bottom: 0.0, left: 20.0, right: 20.0),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(Icons.new_releases, color: Colors.red,),
                              Expanded(
                                  child: Text(
                                "Mật khẩu không được để trống",
                                style: TextStyle(color: Colors.red),
                                maxLines: 10,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ))
                            ],
                          ),
                        )),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 0.0, bottom: 0.0, left: 40.0, right: 40.0),
                      child: TextField(
                        controller: _controller,
                        //  textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Email (nếu có)",
                          suffixIcon: IconButton(
                            onPressed: _controller.clear,
                            icon: Icon(Icons.highlight_remove_outlined),
                          ),
                        ),
                        keyboardType: TextInputType.name,
                        maxLength: 100, // Only numbers can be entered
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(
                            top: 0.0, bottom: 0.0, left: 20.0, right: 20.0),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(Icons.new_releases, color: Colors.red,),
                              Expanded(
                                  child: Text(
                                "Quý khách vui lòng xác nhận lại mật khẩu",
                                style: TextStyle(color: Colors.red),
                                maxLines: 10,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ))
                            ],
                          ),
                        )),
                    Container(
                      child: Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          Text(
                              "Tôi đồng ý với điều khoản và chính sách của Ví IO")
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: ElevatedButton(
                        child: Text('Tiếp tục'),
                        onPressed: (){
                          checkEmail(context);
                        //  context.read<AppBloc>().add(EventCreatePassword());
                        },
                      ),
                    ),
                    Container(
                      child: Html(
                          data:
                              "<p><b>(*) Bắt buộc điền thông tin Lưu ý số điện thoại Quý khách sử dụng để đăng ký tài khoản ví IO: Số điện thoại chính chủThường xuyên sử dụngPhải trùng với số điện thoại đăng ký Internet banking tại ngân hàng</b><p>"),
                    )
                  ]),
                ),
              ),
            ),
          ),
        ));
  }

  Future<void> checkEmail(BuildContext context) async {
    String data = jsonEncode(
        EmailRequest("hgfhgf"));
    String encrypt = AppConstant.rsa!.encrypt(data);

    var dataSign = AppConstant.appVer! + AppConstant.deviceID! + encrypt;
    String sign = AppConstant.rsa!.sign(dataSign);

    String? result = await RequestAPI().requestPost(
        "http://115.84.183.19:9090/EWalletApi/services/auth/check-email",
        jsonEncode(DataRequest(
            AppConstant.appVer, AppConstant.deviceID, encrypt, sign)));
    DataResponse dataResponse = DataResponse.fromJson(jsonDecode(result!));
    EmailResponse emailResponse = EmailResponse.fromJson(
        jsonDecode(AppConstant.rsa!.decrypt(dataResponse.data!)));
    if (emailResponse.status == true) {
      context.read<AppBloc>().add(EventCreatePassword());
    } else {
      //Báo lỗi
      //context.read<AppBloc>().add(EventRegister());
    }
  }
}
