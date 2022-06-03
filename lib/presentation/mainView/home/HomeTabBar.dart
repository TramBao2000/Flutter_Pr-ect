import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iowallet/presentation/mainView/common/QrCodeScanner.dart';

import 'Account.dart';
import 'History.dart';
import 'Home.dart';
import 'Promote.dart';

class HomeTabBar extends StatelessWidget {
  HomeTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarExerciseWidget(
      key: null,
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class TabBarExerciseWidget extends StatefulWidget {
  TabBarExerciseWidget({Key? key}) : super(key: key);

  @override
  _TabBarExerciseWidgetState createState() => _TabBarExerciseWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _TabBarExerciseWidgetState extends State<TabBarExerciseWidget> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    History(),
    QrCodeScanner(),
    Promote(),
    Account()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 60.0,
        height: 60.0,
        child: FloatingActionButton(
            backgroundColor: Colors.black12,
            child: Icon(Icons.qr_code_scanner, size: 40,),
            onPressed: () {}),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang Chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Lịch Sử GD',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
              size: 0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_rounded),
            label: 'Ưu đãi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_rounded),
            label: 'Tài Khoản',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
