// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Tài khoản`
  String get account {
    return Intl.message(
      'Tài khoản',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Quản lý thẻ/tài khoản`
  String get card_manage {
    return Intl.message(
      'Quản lý thẻ/tài khoản',
      name: 'card_manage',
      desc: '',
      args: [],
    );
  }

  /// `Giới thiệu`
  String get introduce {
    return Intl.message(
      'Giới thiệu',
      name: 'introduce',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất`
  String get sign_out {
    return Intl.message(
      'Đăng xuất',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `Cài đặt`
  String get setup {
    return Intl.message(
      'Cài đặt',
      name: 'setup',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get payment {
    return Intl.message(
      'Checkout',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Ví IO`
  String get wallet_name {
    return Intl.message(
      'Ví IO',
      name: 'wallet_name',
      desc: '',
      args: [],
    );
  }

  /// `Số dư ví (VND)`
  String get wallet_balance {
    return Intl.message(
      'Số dư ví (VND)',
      name: 'wallet_balance',
      desc: '',
      args: [],
    );
  }

  /// `Unauthenticated`
  String get account_state_unauthenticated {
    return Intl.message(
      'Unauthenticated',
      name: 'account_state_unauthenticated',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
