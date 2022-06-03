import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iowallet/presentation/customWidgets/NoticeWidget.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class NoticeBoard extends StatefulWidget {
  const NoticeBoard({Key? key}) : super(key: key);

  @override
  State<NoticeBoard> createState() => _MyThreeOptionsState();
}

class _MyThreeOptionsState extends State<NoticeBoard> {
  int? _value = 1;
  var _controller = TextEditingController();
  final List<String> notificationList = [
    "Tính năng 1",
    "Tính năng 2",
    "Tính năng 3",
    "Tính năng 4",
    "Tính năng 5",
    "Tính năng 6",
    "Tính năng 7",
    "Tính năng 8",
    "Tính năng 9",
    "Tính năng 10",
    "Tính năng 11",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Thông báo'),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Expanded(
                  child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List<Widget>.generate(
                    9,
                    (int index) {
                      return Container(
                        padding: const EdgeInsets.only(
                            top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                        child: ChoiceChip(
                          label: Text('Option $index'),
                          backgroundColor: Colors.transparent,
                          selectedColor: Colors.blue,
                          labelStyle: TextStyle(
                            color: _value == index ? Colors.white : Colors.blue,
                          ),
                          shape: StadiumBorder(
                              side: BorderSide(color: Colors.blue)),
                          selected: _value == index,
                          onSelected: (bool selected) {
                            setState(() {
                              _value = selected ? index : null;
                            });
                          },
                        ),
                      );
                    },
                  ).toList(),
                ),
              )),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    children: List<Widget>.generate(10, (index) {
                  return NoticeWidget();
                })),
              ),
            )
          ],
        ));
  }
}
