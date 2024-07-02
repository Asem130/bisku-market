import 'package:bisku/core/utils/api_services.dart';
import 'package:bisku/features/auth/data/repos/login_repository/login_repo.dart';

class LoginRepoImplementation implements LoginRepo {
  final Api api = Api();
  LoginRepoImplementation();

  @override
  Future<void> postUserLoginData({
    required String email,
    required String password,
  }) async {
    try {
      await api.postLoginData(
        endPoint: 'Login',
        email: email,
        password: password,
      );
    } on Exception catch (e) {
      print('Erorr');
    }
  }
}
