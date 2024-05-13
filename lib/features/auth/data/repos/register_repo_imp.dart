import 'package:bisku/core/utils/api_services.dart';
import 'package:bisku/features/auth/data/repos/register_repo.dart';

class RegisterRepoImplementation implements RegisterRepo {
  final Api api = Api();
  RegisterRepoImplementation();

  @override
  Future<void> postUserRegisterData(
      {required String firstName,
      required String lastName,
      required String email,
      required String password,
      required String phoneNumber}) async {
    try {
      await api.postData(
        endPoint: 'register',
        email: email,
        firstName: firstName,
        lastName: lastName,
        password: password,
        phone: phoneNumber,
      );
    } on Exception catch (e) {
      print(e);
    }
  }
}
