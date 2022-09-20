import 'package:clone_centauro/componentes/appBar/appbar.dart';
import 'package:clone_centauro/componentes/drawerPersonalizado.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../componentes/produto/produto.dart';
import '../date/providerProd.dart';

class produtoCard extends StatefulWidget {
  const produtoCard({Key? key}) : super(key: key);

  @override
  _produtoCardState createState() => _produtoCardState();
}

class _produtoCardState extends State<produtoCard> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProdProvider>(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        heght: size.height * 0.16,
        filtro: true,
      ),
      drawer: const DrawerApp(),
      body: ProdListGrid(
        produtos: provider.produtos,
        exibicao: provider.grade,
        
      ),
    );
  }
}
