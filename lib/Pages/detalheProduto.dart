import 'package:clone_centauro/models/produto.dart';
import 'package:flutter/material.dart';

class DetalheProduto extends StatelessWidget {
  const DetalheProduto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final produto = ModalRoute.of(context)!.settings.arguments as Produto;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(),
      ),
      body: Column(
        children: [
          Container()
        ],
      )
    );
  }
}
