import 'package:bloc/bloc.dart';
import 'package:estudo_modular/src/modules/auth/cubit/login_state.dart';

import '../repositories/login_respository.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;

  LoginCubit({required LoginRepository loginRepository})
      : _loginRepository = loginRepository,
        super(LoginState.initial());

  // LoginCubit(this.loginRepository) : super(LoginState.initial());
  String? text;
  void emailChanged(String? value) {
    // text = value;
    emit(state.copyWith(email: value));
    print('cubit email value => $value email: ${state.email}');
  }

  void senhaChanged(String? value) {
    emit(state.copyWith(senha: value));
    print('cubit senha value => $value senha: ${state.senha}');
  }

  void userAuthentication() {
    if (_loginRepository.login(state.email, state.senha)) {
      state.status = LoginStatus.success;
    }
  }
}
