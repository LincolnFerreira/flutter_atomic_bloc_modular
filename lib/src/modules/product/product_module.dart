import 'package:estudo_modular/src/modules/product/views/list_product_page.dart';
import 'package:estudo_modular/src/modules/product/views/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => const ProductPage(),
            children: [
              ChildRoute('/red',
                  child: (context, args) => const ListProductPage()),
              ChildRoute('/blue',
                  child: (context, args) => Container(color: Colors.blue)),
              ChildRoute('/yellow',
                  child: (context, args) => Container(color: Colors.yellow)),
            ],
            transition: TransitionType.leftToRightWithFade),
        ChildRoute('/list', child: (context, args) => const ListProductPage()),
      ];
}
