import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iowallet/common/utils/AppConstant.dart';
import 'package:iowallet/model/request_and_reponse/CheckPhoneNumber.dart';
import 'package:iowallet/model/request_and_reponse/Data.dart';
import 'package:iowallet/presentation/mainView/AppEvents.dart';
import 'package:iowallet/presentation/mainView/AppState.dart';
import 'package:iowallet/presentation/mainView/common/Policy.dart';
import 'package:iowallet/presentation/mainView/common/UserManual.dart';
import 'package:iowallet/presentation/mainView/home/HomeTabBar.dart';
import '../../../common/network/RequestAPI.dart';
import '../../../common/security/RSACrypto.dart';
import '../../../common/utils/SharedPreferencesHelper.dart';
import '../AppBloc.dart';
import '../login/Login.dart';

class CheckExistUser extends StatelessWidget {
  var _controller = TextEditingController();

  Future<void> checkPhoneNumber(BuildContext context) async {
    String data = jsonEncode(CheckPhoneNumberRequest(_controller.text));
    String encrypt = AppConstant.rsa!.encrypt(data);

    var dataSign = AppConstant.appVer! + AppConstant.deviceID! + encrypt;
    String sign = AppConstant.rsa!.sign(dataSign);

    String? result = await RequestAPI().requestPost(
        "http://115.84.183.19:9090/EWalletApi/services/auth/check-phone",
        jsonEncode(DataRequest(
            AppConstant.appVer, AppConstant.deviceID, encrypt, sign)));
    DataResponse dataResponse = DataResponse.fromJson(jsonDecode(result!));
    CheckPhoneNumberResponse checkPhoneNumberResponse =
        CheckPhoneNumberResponse.fromJson(
            jsonDecode(AppConstant.rsa!.decrypt(dataResponse.data!)));
    if (checkPhoneNumberResponse.status == true) {
      context.read<AppBloc>().add(EventLogin());
    } else {
      context.read<AppBloc>().add(EventRegister());
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state is StateRegister) {
          Navigator.of(context).pushNamed('/register');
        }
        if (state is StateUserManual) {
          Navigator.of(context).pushNamed('/usermanual');
        }
        if (state is StatePolicy) {
          Navigator.of(context).pushNamed('/policy');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('IO Media'),
        ),
        body: Container(
          color: Colors.white,
          child: Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height -
                    AppBar().preferredSize.height * 1.5,
                child: Column(mainAxisSize: MainAxisSize.max, children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                    child: Row(
                      children: [
                        TextButton(
                          child: Text(
                            'T??m hi???u v??? V?? IO',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onPressed: () => moveToHome(context),
                        ),
                        Spacer(),
                        ElevatedButton(
                          child: Row(
                            children: [
                              Icon(Icons.announcement),
                              Text("H??? tr???")
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            side: BorderSide(
                              width: 3.0,
                              color: Colors.green,
                            ),
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
                        hintText: "Nh???p s??? ??i???n tho???i",
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
                            Icon(
                              Icons.new_releases,
                              color: Colors.red,
                            ),
                            Expanded(
                                child: Text(
                              "S??? ??i???n tho???i kh??ng ch??nh x??c. Qu?? kh??ch vui l??ng ki???m tra l???i",
                              style: TextStyle(color: Colors.red),
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ))
                          ],
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 30.0),
                    child: ElevatedButton(
                      child: Text('Ti???p t???c'),
                      onPressed: () {
                        checkPhoneNumber(context);
                      },
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
                          child: Text('??i???u kho???n v?? ch??nh s??ch'),
                          onPressed: () {
                            context.read<AppBloc>().add(EventPolicy());
                          },
                        ),
                        Icon(Icons.vertical_align_top_sharp),
                        TextButton(
                          child: Text('H?????ng d???n s??? d???ng'),
                          onPressed: () {
                            context.read<AppBloc>().add(EventUserManual());
                          },
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
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
}
