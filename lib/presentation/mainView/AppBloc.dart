import 'package:flutter_bloc/flutter_bloc.dart';

import 'AppEvents.dart';
import 'AppState.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(StateSplash()) {
   // on<EventSplash>((event, emit) => emit(StateSplash()));
    on<EventSplash>((event, emit){
      print("fdaslfhds");
    });
    on<EventCheckExistUser>((event, emit) => emit(StateCheckExistUser()));
    on<EventRegister>((event, emit) => emit(StateRegister()));
    on<EventPolicy>((event, emit) => emit(StatePolicy()));
    on<EventUserManual>((event, emit) => emit(StateUserManual()));
  }
}