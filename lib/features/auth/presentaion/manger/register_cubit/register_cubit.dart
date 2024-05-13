
import 'package:bisku/features/auth/data/repos/register_repo.dart';
import 'package:bisku/features/auth/presentaion/manger/register_cubit/register_states.dart';
import 'package:bloc/bloc.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit(this.registerRepo) : super(InistialState());
  final RegisterRepo registerRepo;

  Future<void> postUserRegister(
      {required String firstName,
      required String lastName,
      required String email,
      required String password,
      required String phoneNumber}) async {
    emit(LoadingState());
    try {
      await registerRepo.postUserRegisterData(
        firstName: firstName,
        email: email,
        lastName: lastName,
        password: password,
        phoneNumber: phoneNumber,
      );
      emit(SuccsessState());
    } on Exception catch (e) {
      emit(FailureState(
          errorMessage: 'Errorrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr${e.toString()}'));
    }
  }
}
