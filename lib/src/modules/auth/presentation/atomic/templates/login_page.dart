import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../components/atoms/logo_atom.dart';
import '../../../cubit/login_cubit.dart';
import '../../../cubit/login_state.dart';
import '../organisms/form_input_organism.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  final TextEditingController emailControllerLoginPage =
      TextEditingController();
  final TextEditingController senhaControllerLoginPage =
      TextEditingController();
  String? email;
  String? senha;
  //   bloc.stream.listen((state) async {
  //     if (state is LoginSuccess) {
  //       await Future.delayed(const Duration(microseconds: 300));
  //       // Modular.to.navigate("/products/red");
  //     }
  //     if (state is LoginFailure) {
  //       print("erro de login");
  //     }
  //   });
  // }

  final cubit = Modular.get<LoginCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      bloc: cubit,
      listener: (context, state) {
        if (state.status == LoginStatus.success) {
          print('sucesso');
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height * 1,
            color: const Color.fromARGB(255, 30, 77, 95),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const LogoWidgetAtom(width: 350.0),
                FormInputOrganism(
                  emailController: emailControllerLoginPage,
                  senhaController: senhaControllerLoginPage,
                  onChangedEmail: (value) {
                    email = value;
                  },
                  onChangedSenha: (value) {
                    senha = value;
                  },
                  onPressed: () {
                    cubit.emailChanged(email);
                    cubit.senhaChanged(senha);
                    cubit.userAuthentication();
                    // cubit.userAuthentication();

                    // bool isAuthentication =
                    // context.read<LoginCubit>().userAuthentication();
                    // if (isAuthentication) {}
                    // bloc.add(
                    //   LoginWithEmail(
                    //     email: emailController.text,
                    //     password: senhaController.text,
                    //   ),
                    // );
                  },
                ),
              ],
            ),
          ),
        );
        // },
        // );
      },
    );
  }
}
