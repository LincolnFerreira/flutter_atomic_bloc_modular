// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonDefaultAtom extends StatelessWidget {
  //TODO: PESQUISAR SOBRE O TIPO VOIDCALLBACK E SUA FÁMILIA
  final VoidCallback onPresseds;
  final Widget child;
  const ButtonDefaultAtom({
    Key? key,
    required this.onPresseds,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPresseds, child: child);
  }
}


                    // ElevatedButton(
                    //   onPressed: () {
                    //     bloc.add(
                    //       LoginWithEmail(
                    //           email: 'lincoln@gmail.com', password: '1234'),
                    //     );
                    //   },
                    //   child: TextAtom('Entrar', Display.HEADLINE_4),
                    // ),