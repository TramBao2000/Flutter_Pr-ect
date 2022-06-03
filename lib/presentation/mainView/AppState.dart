import 'package:flutter/material.dart';

@immutable
abstract class AppState {}

class StateSplash extends AppState {}
class StateCheckExistUser extends AppState {}
class StateRegister extends AppState {}
class StateCreatePassword extends AppState {}
class StateOTPVerify extends AppState {}

class StateRegisterCompleted extends AppState {}

class StatePolicy extends AppState {}
class StateUserManual extends AppState {}
