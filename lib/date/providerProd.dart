import 'package:clone_centauro/date/date.dart';
import 'package:clone_centauro/models/produto.dart';
import 'package:flutter/foundation.dart';

class ProdProvider with ChangeNotifier {
  bool grade = true;
  bool filtragemProdutos = false;
  List<Produto> _list = Dumdate;

  List<Produto> get produtos {
    return [..._list];
  }

  void filtroEscolha() {
    grade = !grade;
    notifyListeners();
  }

  void filtragemProd() {
    filtragemProdutos = !filtragemProdutos;
    notifyListeners();
  }

  void menorPreco() {
    _list.sort((a, b) => a.precototal.compareTo(b.precototal));
    notifyListeners();
  }

  void maiorPreco() {
    _list.sort((a, b) => b.precototal.compareTo(a.precototal));
    notifyListeners();
  }

  void Popularidade() {
    _list.sort(((a, b) => b.avaliacoes.compareTo(a.avaliacoes)));
    notifyListeners();
  }
}
