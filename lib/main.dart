import 'package:estudo_modular/src/app_module.dart';
import 'package:estudo_modular/src/app_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  Modular.to.addListener(() {
    print(Modular.to.path);
  });

  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
