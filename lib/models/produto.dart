import 'package:flutter/foundation.dart';

class Produto with ChangeNotifier {
  final String titulo;
  final String descricao;
  final double desconto;
  final double precototal;
  final String marca;
  final double estrelas;
  final int avaliacoes;
  final List<int> tamanhos;
  final int estoque;
  bool favorito;
  final String genero;
  final int cores;
  final String idImagem;

  Produto({
    required this.titulo,
    required this.descricao,
    required this.desconto,
    required this.precototal,
    required this.marca,
    required this.estrelas,
    required this.avaliacoes,
    required this.tamanhos,
    required this.estoque,
    this.favorito = false,
    required this.genero,
    required this.cores,
    required this.idImagem
  });

  void favoritar() {
    favorito = !favorito;
    notifyListeners();
  }
}
