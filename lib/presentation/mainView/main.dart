import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:iowallet/generated/l10n.dart';
import 'package:iowallet/presentation/mainView/common/OTPVerify.dart';
import 'package:iowallet/presentation/mainView/register/RegisterCompleted.dart';

import '../../generated/l10n.dart';
import 'App.dart';
import 'AppBloc.dart';
import 'register/Register.dart';
import 'start/Splash.dart';
import 'start/CheckExistUser.dart';
import 'account/InfoPersonal.dart';
import 'account/ListBillCheckout.dart';
import 'banking/ListTaskWithMoneyBanking.dart';
import 'common/Test.dart';
import 'login/Login.dart';
import 'noticeboard/NoticeBoard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(() => runApp(const App()),
      blocObserver: AppBlocObserver());
}

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (bloc is Cubit) print(change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}