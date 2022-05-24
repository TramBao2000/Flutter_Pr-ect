import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iowallet/presentation/mainView/common/Policy.dart';
import 'package:iowallet/presentation/mainView/common/UserManual.dart';
import 'package:iowallet/presentation/mainView/home/HomeTabBar.dart';

import '../login/Login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Image(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            image: AssetImage('assets/photos/pic1.png')),
      ),
    );
  }
}
