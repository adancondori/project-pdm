part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

// When the user signing in with email and password this event is called and the [AuthRepository] is called to sign in the user
class SignInRequested extends LoginEvent {
  final String username;
  // final String password;

  SignInRequested(this.username);
}

// When the user signing up with email and password this event is called and the [AuthRepository] is called to sign up the user
class SignUpRequested extends LoginEvent {
  final String username;
  // final String password;

  SignUpRequested(this.username);
}

// When the user signing in with google this event is called and the [AuthRepository] is called to sign in the user
class GoogleSignInRequested extends LoginEvent {}

// When the user signing out this event is called and the [AuthRepository] is called to sign out the user
class SignOutRequested extends LoginEvent {}
