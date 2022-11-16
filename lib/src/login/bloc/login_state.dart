part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

// class LoginInitial extends LoginState {
//   final String user_name;
//   final int state;
//
//   //
//   static const int LOADING = 1;
//   static const int ERROR = 2;
//   static const int NONE = 3;
//
//   LoginInitial({this.user_name = '', this.state = LoginInitial.NONE});
// }

class Loading extends LoginState {
  @override
  List<Object?> get props => [];
}

// When the user is authenticated the state is changed to Authenticated.
class Authenticated extends LoginState {
  final String user;
  Authenticated(this.user);

  @override
  List<Object?> get props => [];
}

// This is the initial state of the bloc. When the user is not authenticated the state is changed to Unauthenticated.
class UnAuthenticated extends LoginState {
  @override
  List<Object?> get props => [];
}

// If any error occurs the state is changed to AuthError.
class AuthError extends LoginState {
  final String error;

  AuthError(this.error);
  @override
  List<Object?> get props => [error];
}
