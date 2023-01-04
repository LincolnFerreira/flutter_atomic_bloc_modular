class LoginRepository {
  bool login(String email, String password) {
    if (email == 'lincoln@gmail.com' && password == '1234') {
      return true;
    } else {
      return false;
    }
  }
}
