import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(UnAuthenticated()) {
    on<SignInRequested>(
      (event, emit) async {
        emit(Loading());
        try {
          if (1 == 1) {
            emit(Authenticated("user"));
          } else {
            emit(AuthError(""));
          }
        } catch (e) {
          emit(AuthError(e.toString()));
          emit(UnAuthenticated());
        }
      },
    );
  }
}
