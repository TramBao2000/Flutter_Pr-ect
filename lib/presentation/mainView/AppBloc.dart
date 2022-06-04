import 'package:flutter_bloc/flutter_bloc.dart';

import 'AppEvents.dart';
import 'AppState.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(StateSplash()) {
   // on<EventSplash>((event, emit) => emit(StateSplash()));
    on<EventSplash>((event, emit) => emit(StateSplash()));
    on<EventCheckExistUser>((event, emit) => emit(StateCheckExistUser()));
    on<EventRegister>((event, emit) => emit(StateRegister()));
    on<EventPolicy>((event, emit) => emit(StatePolicy()));
    on<EventUserManual>((event, emit) => emit(StateUserManual()));
    on<EventCreatePassword>((event, emit) => emit(StateCreatePassword()));
    on<EventOTPVerify>((event, emit) => emit(StateOTPVerify()));
    on<EventRegisterCompleted>((event, emit) => emit(StateRegisterCompleted()));
    on<EventPreStartKYC>((event, emit) => emit(StatePreStartKYC()));
    on<EventHomeTabBar>((event, emit) => emit(StateHomeTabBar()));
  }
}
