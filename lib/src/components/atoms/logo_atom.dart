import 'package:flutter/material.dart';

class LogoWidgetAtom extends StatelessWidget {
  final double? width;
  const LogoWidgetAtom({Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/dartside.png',
      width: width,
    );
  }
}
