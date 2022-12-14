import 'package:estudo_modular/src/modules/auth/repositories/login_respository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estudo_modular/src/modules/auth/blocs/events/login_event.dart';
import 'package:estudo_modular/src/modules/auth/blocs/states/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;

  LoginBloc(this.loginRepository) : super(LoginIdle()) {
    on<LoginWithEmail>(loginEmail);
  }

  Future loginEmail(LoginWithEmail event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    await Future.delayed(const Duration(seconds: 1));
    try {
      await loginRepository.login(event.email, event.password);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure('Erro na conta'));
    }
  }
}
