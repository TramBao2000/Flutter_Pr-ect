import 'package:flutter/material.dart';
import 'package:iowallet/presentation/customWidgets/CustomButtonBottom.dart';

import 'ChooseDocumentTypeForKYC.dart';

class PreStartKYC extends StatelessWidget {
  var _controller = TextEditingController();

  _moveToChooseTypeKYC(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChooseDocumentTypeForKYC(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Trạng thái tài khoản'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: Text(
                "Quý khách vui lòng xác thực tài khoản để có thể sử dụng các dịch vụ do Ví điện tử IO cung cấp"),
          ),
          CustomButtonBottom(textTitle: "Bắt đầu xác thực", method: _moveToChooseTypeKYC)
        ]),
      ),
    );
  }
}
