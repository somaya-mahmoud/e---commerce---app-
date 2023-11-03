part of 'login_cubit.dart';

@immutable
abstract class LoginStates {}

class LoginInitialState extends LoginStates {}
class LoginSuccessState extends LoginStates {}
class LoginFailureState extends LoginStates {

  final String errorMessage;

  LoginFailureState(this.errorMessage);
}
