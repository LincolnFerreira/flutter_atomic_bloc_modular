abstract class LoginEvent {}

class LoginWithEmail implements LoginEvent {
  final String email;
  final String password;

  LoginWithEmail({
    required this.email,
    required this.password,
  });
}
