import 'package:bisku/features/auth/data/repos/login_repository/login_repo.dart';
import 'package:bisku/features/auth/presentaion/manger/login_cubit/login_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());
  LoginRepo loginRepo;
  Future<void> postUserLogin({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    try {
      await loginRepo.postUserLoginData(
        email: email,
        password: password,
      );
      emit(LoginSuccsess());
    } on Exception catch (e) {
      emit(LoginFailure(
          errorMessage: 'Errorrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr${e.toString()}'));
    }
  }
   bool isPassward = true;
  IconData suffix =Icons.visibility_off_outlined;

  void changeSuffix()
{
isPassward = !isPassward;
suffix= isPassward?Icons.visibility_off_outlined:Icons.visibility;
emit(SuffixChange());
}
}
