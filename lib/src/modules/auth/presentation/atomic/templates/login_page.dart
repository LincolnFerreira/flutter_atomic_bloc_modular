import 'package:estudo_modular/src/logo_atom.dart';
import 'package:estudo_modular/src/modules/auth/blocs/events/login_event.dart';
import 'package:estudo_modular/src/modules/auth/blocs/login_bloc.dart';
import 'package:estudo_modular/src/modules/auth/blocs/states/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../presentation/organism/form_input_organism.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  //temporario até conseguir entender como fazer direito
  String? emailText;
  String? senhaText;

  void initState() {
    super.initState();
    bloc.stream.listen((state) async {
      if (state is LoginSuccess) {
        await Future.delayed(const Duration(microseconds: 300));
        // Modular.to.navigate("/products/red");
      }
      if (state is LoginFailure) {
        print("erro de login");
      }
    });
  }

  final bloc = Modular.get<LoginBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: BlocBuilder(
            bloc: bloc,
            builder: (context, state) {
              if (state is LoginSuccess) {
                Modular.to.navigate('/products/red');
              }

              if (state is LoginLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Container(
                height: MediaQuery.of(context).size.height * 1,
                color: const Color.fromARGB(255, 30, 77, 95),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const LogoWidgetAtom(width: 350.0),
                    FormInputOrganism(
                      emailController: emailController,
                      senhaController: senhaController,
                      onChanged: (value) {
                        print("onChanged:" + value);
                        print("controller: " + emailController.text);
                      },
                      onPressed: () {
                        bloc.add(
                          LoginWithEmail(
                            email: emailController.text,
                            password: senhaController.text,
                          ),
                        );
                      },
                    ),
                  ],
                  // ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
