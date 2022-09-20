import 'package:flutter/material.dart';

class carouselImage with ChangeNotifier {
  final List<Image> _listas = [
    Image.network(
      'https://imgcentauro-a.akamaihd.net/05_Campanhas/2022/DescontoProgressivo/desk-primaria.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://imgcentauro-a.akamaihd.net/05_Campanhas/2022/DiaDosPais/desk-primaria-pais.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://imgcentauro-a.akamaihd.net/05_Campanhas/2022/Liquida%20inverno/Desktop.png',
      fit: BoxFit.cover,
    ),
  ];
  List<Image> get itens {
    return [..._listas];
  }

}
