part of 'banners_cubit.dart';

@immutable
abstract class BannersStates {}

class BannersInitialState extends BannersStates {}
class BannersSuccessState extends BannersStates {}
class BannersFailureState extends BannersStates {
  final String errorMessage;
  BannersFailureState(this.errorMessage);
}
