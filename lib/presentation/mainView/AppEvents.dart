import 'package:flutter/material.dart';

@immutable
abstract class AppEvent {}

class EventSplash extends AppEvent {}
class EventCheckExistUser extends AppEvent {}
class EventRegister extends AppEvent {}
class EventCreatePassword extends AppEvent {}
class EventOTPVerify extends AppEvent {}
class EventRegisterCompleted extends AppEvent {}
class EventHomeTabBar extends AppEvent {}
class EventPreStartKYC extends AppEvent {}


class EventPolicy extends AppEvent {}
class EventUserManual extends AppEvent {}
