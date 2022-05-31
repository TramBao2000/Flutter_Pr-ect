import 'package:flutter/material.dart';

@immutable
abstract class AppEvent {}

class EventSplash extends AppEvent {}
class EventCheckExistUser extends AppEvent {}
class EventRegister extends AppEvent {}

class EventPolicy extends AppEvent {}
class EventUserManual extends AppEvent {}
