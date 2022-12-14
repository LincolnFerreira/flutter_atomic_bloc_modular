// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

enum Display {
  HEADLINE_1,
  HEADLINE_2,
  HEADLINE_3,
  HEADLINE_4,
  HEADLINE_5,
  HEADLINE_6,
  BODY_1,
  BODY_2,
}

abstract class BaseDisplay<Widget> {
  Widget render(BuildContext context, Display display);
}
