import 'package:clone_centauro/componentes/produto/parcelas/parcelas.dart';
import 'package:clone_centauro/models/produto.dart';
import 'package:flutter/material.dart';

class ProdListGrid extends StatelessWidget {
  final List<Produto> produtos;
  final bool exibicao;
  const ProdListGrid({Key? key, required this.produtos, required this.exibicao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: exibicao == true ? 2 : 1,
        childAspectRatio: 3 / 2,
        mainAxisExtent: exibicao == true ? 270 : 130,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: produtos.length,
      itemBuilder: (context, index) {
        var precocalculado = (produtos[index].precototal -
            ((produtos[index].desconto / 100) * produtos[index].precototal));

        return exibicao == true
            ? Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Text(
                            "${produtos[index].desconto.toStringAsFixed(0)}%",
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 80,
                      child: Image.network(
                        produtos[index].idImagem,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      produtos[index].titulo,
                      style: const TextStyle(fontWeight: FontWeight.w900),
                    ),
                    //filtro de estrelas
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 1; i < 6; i++)
                          Icon(
                            Icons.star,
                            color: produtos[index].estrelas > i
                                ? Colors.yellow
                                : Colors.grey,
                          ),
                        Text("(${produtos[index].avaliacoes})")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "R\$ ${produtos[index].precototal.toString()}",
                          style: const TextStyle(
                              decoration: TextDecoration.lineThrough),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "R\$ ${precocalculado.toStringAsFixed(2)}",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                      Parcelas(parcelinha: precocalculado.toInt())
                  ],
                ),
              )
            : Card(
                child: ListTile(
                  leading: SizedBox(
                    height: double.infinity,
                    width: 100,
                    child: Image.network(
                      produtos[index].idImagem,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                  title: Text(
                    produtos[index].titulo,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //filtro estrelas
                      Row(
                        children: [
                          for (int i = 1; i < 6; i++)
                            Icon(
                              Icons.star,
                              color: produtos[index].estrelas > i
                                  ? Colors.yellow
                                  : Colors.grey,
                            ),
                          Text("(${produtos[index].avaliacoes})")
                        ],
                      ),
                      //preco sem desconto
                      Row(
                        children: [
                          Text(
                            "R\$ ${produtos[index].precototal.toString()}",
                            style: const TextStyle(
                                decoration: TextDecoration.lineThrough),
                          )
                        ],
                      ),
                      //preco com desconto
                       Row(
                      children: [
                        Text(
                          "R\$ ${precocalculado.toStringAsFixed(2)}",
                          style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black),
                        )
                      ],
                    ),
                    //parcelas
                     Parcelas(parcelinha: precocalculado.toInt())
                    ],
                  ),
                ),
              );
      },
    );
  }
}
