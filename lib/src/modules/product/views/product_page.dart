import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('produto'),
      ),
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: NavigationListener(builder: (context, widget) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Red'),
                    selected: Modular.to.path.endsWith('/red'),
                    onTap: () {
                      Modular.to.navigate('./red');
                    },
                  ),
                  ListTile(
                      title: const Text('Blue'),
                      selected: Modular.to.path.endsWith('/blue'),
                      onTap: () {
                        Modular.to.navigate('./blue');
                      }),
                  ListTile(
                      title: const Text('Yellow'),
                      selected: Modular.to.path.endsWith('/yellow'),
                      onTap: () {
                        Modular.to.navigate('./yellow');
                      }),
                ],
              );
            }),
          ),
          Expanded(child: const RouterOutlet())
          // Center(
          //   child: ElevatedButton(
          //     onPressed: () {
          //       //atenção ao caminho - ROTA RELATIVA
          //       Modular.to.pushNamed('./list');
          //     },
          //     child: const Text('Listar todos os produtos'),
          //   ),
          // ),
        ],
      ),
    );
  }
}
