
abstract class RegisterStates {}

final class RegisterInistialState extends RegisterStates {}

final class RegisterLoadingState extends RegisterStates {}

final class RegisterSuccsessState extends RegisterStates {

  
}

final class RegisterFailureState extends RegisterStates {
final String errorMessage;

  RegisterFailureState({required this.errorMessage});
}
