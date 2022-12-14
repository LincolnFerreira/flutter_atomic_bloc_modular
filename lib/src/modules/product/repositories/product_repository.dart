import '../models/product.dart';

class ProductRepository {
  final List<Product> _products = [];

  List<Product> retrieveProducts() {
    _products.addAll([
      Product(nome: 'Cerveja'),
      Product(nome: 'Café'),
      Product(nome: 'Suplemento alimentar'),
      Product(nome: 'Chocolate'),
      Product(nome: 'Chá'),
      Product(nome: 'Whisky'),
      Product(nome: 'Leite'),
      Product(nome: 'Doce'),
    ]);
    return _products;
  }

  List<Product> addProduct(Product product) {
    _products.add(product);
    return _products;
  }

  List<Product> removeProduct(Product product) {
    _products.remove(product);
    return _products;
  }
}
