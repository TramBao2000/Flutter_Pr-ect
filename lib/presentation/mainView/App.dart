import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:iowallet/presentation/mainView/common/OTPVerify.dart';
import 'package:iowallet/presentation/mainView/common/Policy.dart';
import 'package:iowallet/presentation/mainView/common/UserManual.dart';
import 'package:iowallet/presentation/mainView/kyc/PreStartKYC.dart';
import 'package:iowallet/presentation/mainView/register/CreatePassword.dart';
import 'package:iowallet/presentation/mainView/register/RegisterCompleted.dart';

import '../../generated/l10n.dart';
import 'AppBloc.dart';
import 'login/Login.dart';
import 'register/Register.dart';
import 'start/CheckExistUser.dart';
import 'start/Splash.dart';

class App extends StatelessWidget {
  /// {@macro app}
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  /// {@macro app_view}
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ví điện tử iPay',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routes: {
        '/splash': (context) => Splash(),
        '/checkexistuser': (context) => CheckExistUser(),
        '/register': (context) => Register(),
        '/login': (context) => Login(),
        '/policy': (context) => Policy(),
        '/usermanual': (context) => UserManual(),
        '/createpassword': (context) => CreatePassword(),
        '/otpverify': (context) => OTPVerify(),
        '/registercompleted': (context) => RegisterCompleted(),
        '/prestartkyc': (context) => PreStartKYC(),
      },
      initialRoute: '/splash',
    );
  }
}
