// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../../core/display/base_display.dart';
import '../../../../../components/atoms/button_default_atom.dart';
import '../../../../../components/atoms/input_atom.dart';
import '../../../../../components/atoms/text_atom.dart';

class FormInputOrganism extends StatefulWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final Function(String?) onChangedEmail;
  final Function(String?) onChangedSenha;
  final VoidCallback onPressed;

  FormInputOrganism({
    Key? key,
    required TextEditingController emailController,
    required TextEditingController senhaController,
    required this.onChangedEmail,
    required this.onChangedSenha,
    required this.onPressed,
  }) : super(key: key) {
    emailController = this.emailController;
    senhaController = this.senhaController;
  }

  @override
  State<FormInputOrganism> createState() => _FormInputOrganismState();
}

class _FormInputOrganismState extends State<FormInputOrganism> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          InputAtomWidget(
            hintText: 'Email:',
            fieldController: widget.emailController,
            isObscureText: false,
            onChanged: widget.onChangedEmail,
          ),
          const SizedBox(
            height: 10,
          ),
          InputAtomWidget(
            hintText: 'Senha:',
            fieldController: widget.senhaController,
            isObscureText: true,
            onChanged: widget.onChangedSenha,
          ),
          ButtonDefaultAtom(
            onPresseds: widget.onPressed,
            child: TextAtom('Entrar', Display.HEADLINE_4),
          ),
        ],
      ),
    );
  }
}
