
abstract class RegisterStates {}

final class InistialState extends RegisterStates {}

final class LoadingState extends RegisterStates {}

final class SuccsessState extends RegisterStates {
  
}

final class FailureState extends RegisterStates {
  final String errorMessage;

  FailureState({required this.errorMessage});
}
