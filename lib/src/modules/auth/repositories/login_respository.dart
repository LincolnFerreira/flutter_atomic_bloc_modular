class LoginRepository {
  login(String email, String password) {
    if (email == 'lincoln@gmail.com' && password == '1234') {
      return true;
    } else {
      throw Exception("erro de login");
    }
  }
}
