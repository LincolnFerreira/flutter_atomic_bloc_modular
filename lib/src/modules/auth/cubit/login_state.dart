// ignore_for_file: public_member_api_docs, sort_constructors_first

enum LoginStatus { initial, loading, success, failure }

class LoginState {
  final String email;
  final String senha;
  LoginStatus status;

  LoginState({
    required this.email,
    required this.senha,
    required this.status,
  });

//uma CÓPIA da instância atual, porém valores podem ser alterados e o hashcode é diferente
  LoginState copyWith({
    String? email,
    String? senha,
    LoginStatus? status,
  }) {
    return LoginState(
      email: email ?? this.email,
      senha: senha ?? this.senha,
      status: status ?? this.status,
    );
  }

  factory LoginState.initial() {
    return LoginState(
      email: '',
      senha: '',
      status: LoginStatus.initial,
    );
  }
}


// class LoginSuccess implements LoginState {}

// class LoginLoading implements LoginState {}

// class LoginFailure implements LoginState {
//   final String message;

//   LoginFailure(this.message);
// }
