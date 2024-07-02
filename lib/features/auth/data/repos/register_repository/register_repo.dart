abstract class RegisterRepo {
  Future<void> postUserRegisterData({required String firstName,
      required String lastName,
      required String email,
      required String password,
      required String phoneNumber});
}