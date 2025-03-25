import 'package:flutter/material.dart';

import '../model/produto_model.dart';

class ProdutoController extends ChangeNotifier {
  final List<Produto> _produtos = [
    Produto(nome: 'Notebook', preco: 4000.00),
    Produto(nome: 'Mouse', preco: 90.00),
    Produto(nome: 'Teclado', preco: 120.00),
    Produto(nome: 'Monitor', preco: 600.00),
    Produto(nome: 'Smartphone', preco: 2200.00),
    Produto(nome: 'Notebook Core i7', preco: 5300.00),
  ];

  bool _visualizarLista = true;

  List<Produto> get produtos => _produtos;
  bool get visualizarLista => _visualizarLista;

  void alterarVisualizacao(valor) {
    _visualizarLista = valor;
    notifyListeners();
  }

  void removerItem(index) {
    _produtos.removeAt(index);
    notifyListeners();
  }
}
