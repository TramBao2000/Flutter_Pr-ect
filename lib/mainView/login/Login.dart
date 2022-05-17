import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('IO Media'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
          color: Colors.white,
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child:  Row(children: [
                ElevatedButton(
                  child: Text('Tìm hiểu về Ví IO'),
                  onPressed: () => moveToExercise(context),
                ),
                Spacer(),
                ElevatedButton(
                  child: Text('Hỗ trợ'),
                  onPressed: () => moveToHome(context),
                ),
              ],),
            ),

            Image(
              width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.2,
                image: AssetImage('assets/pic1.png')),
            TextField(
              controller: _controller,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "nhập số điện thoại",
                suffixIcon: IconButton(
                  onPressed: _controller.clear,
                  icon: Icon(Icons.highlight_remove_outlined),
                ),
              ),
            ),
            Row(children: [
              Icon(Icons.alarm),
              Text("Số điện thoại không chính xác. Quý khách vui lòng kiểm tra lại",
              style: TextStyle(
                color: Colors.red
              ))
            ],),
            Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: ElevatedButton(
                child: Text('Tiếp tục'),
                onPressed: () => moveToHome(context),
              ),
            ),

          ]),
      ),
    );
    // return Container(
    //   color: Colors.red,
    //   child: Column(children: [
    //     MaterialButton(
    //       child: Text('Move'),
    //       onPressed: () => moveToExercise(context),
    //     ),
    //     MaterialButton(
    //       child: Text('Back'),
    //       onPressed: () => moveToHome(context),
    //     ),
    //   ]),
    // );
  }

  moveToExercise(BuildContext context) {
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => IndexPage(),
    //     ));
  }
  moveToHome(BuildContext context) {
    Navigator.of(context).pop();
  }
}
