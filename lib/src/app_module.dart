import 'package:estudo_modular/src/modules/auth/auth_module.dart';
import 'package:estudo_modular/src/modules/auth/repositories/login_respository.dart';
import 'package:estudo_modular/src/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/auth/blocs/login_bloc.dart';
import 'modules/product/product_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => LoginRepository()),
        Bind.singleton((i) => LoginBloc(i()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/auth/', module: AuthModule()),
        ModuleRoute('/products/', module: ProductModule()),
      ];
}
