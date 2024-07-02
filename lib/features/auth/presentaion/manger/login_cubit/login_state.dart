abstract class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccsess extends LoginState {}

final class LoginFailure extends LoginState {
  LoginFailure({required String errorMessage});
}
class SuffixChange extends LoginState{ }