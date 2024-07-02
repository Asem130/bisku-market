abstract class LoginRepo {
  Future<void> postUserLoginData({
    required String email,
    required String password,
  });
}
