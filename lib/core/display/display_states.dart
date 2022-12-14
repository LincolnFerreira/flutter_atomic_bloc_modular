// ignore_for_file: dead_code

import 'package:estudo_modular/core/display/base_display.dart';
import 'package:flutter/material.dart';

class DisplayStates implements BaseDisplay {
  @override
  Widget render(BuildContext context, Display display) {
    switch (display) {
      case Display.HEADLINE_1:
        return headline1(context, display);
        break;
      case Display.HEADLINE_2:
        return headline2(context, display);
        break;
      case Display.HEADLINE_3:
        return headline3(context, display);
        break;
      case Display.HEADLINE_4:
        return headline4(context, display);
        break;
      case Display.HEADLINE_5:
        return headline5(context, display);
        break;
      case Display.HEADLINE_6:
        return headline6(context, display);
        break;
      case Display.BODY_1:
        return body1(context, display);
        break;
      case Display.BODY_2:
        return body2(context, display);
        break;
    }
  }

  Widget headline1(BuildContext context, Display display) {
    return headline1(context, display);
  }

  Widget headline2(BuildContext context, Display display) {
    return headline2(context, display);
  }

  Widget headline3(BuildContext context, Display display) {
    return headline3(context, display);
  }

  Widget headline4(BuildContext context, Display display) {
    return headline4(context, display);
  }

  Widget headline5(BuildContext context, Display display) {
    return headline5(context, display);
  }

  Widget headline6(BuildContext context, Display display) {
    return headline6(context, display);
  }

  Widget body1(BuildContext context, Display display) {
    return body1(context, display);
  }

  Widget body2(BuildContext context, Display display) {
    return body2(context, display);
  }
}
