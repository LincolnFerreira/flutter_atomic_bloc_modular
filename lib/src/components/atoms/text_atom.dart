// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:estudo_modular/core/display/base_display.dart';
import 'package:estudo_modular/core/display/display_states.dart';
import 'package:flutter/material.dart';

class TextAtom extends StatelessWidget with DisplayStates {
  final String text;
  final Display display;
  Color? color = Colors.white;

  TextAtom(
    this.text,
    this.display, {
    Key? key,
  }) : super(key: key);

  // TextAtom.color(
  //   this.text,
  //   this.display,
  //   this.color, {
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context, display);
  }

  @override
  Widget headline1(BuildContext context, display) {
    return _atomText(text: text, color: color, fontSize: 24.0);
  }

  @override
  Widget headline2(BuildContext context, display) {
    return _atomText(text: text, color: color, fontSize: 22);
  }

  @override
  Widget headline3(BuildContext context, display) {
    return _atomText(text: text, color: color, fontSize: 20.0);
  }

  @override
  Widget headline4(BuildContext context, display) {
    return _atomText(text: text, color: color, fontSize: 18.0);
  }

  @override
  Widget headline5(BuildContext context, display) {
    return _atomText(text: text, color: color, fontSize: 16.0);
  }

  @override
  Widget headline6(BuildContext context, display) {
    return _atomText(text: text, color: color, fontSize: 14.0);
  }

  @override
  Widget body1(BuildContext context, display) {
    return _atomText(text: text, color: color, fontSize: 12.0);
  }

  @override
  Widget body2(BuildContext context, display) {
    return _atomText(text: text, color: color, fontSize: 10.0);
  }

  Text _atomText({
    required text,
    required color,
    required fontSize,
  }) {
    return Text(
      text!,
      style: TextStyle(color: color, fontSize: fontSize),
    );
  }
}
