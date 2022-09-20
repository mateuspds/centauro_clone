import 'package:clone_centauro/date/providerProd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double heght;
  final bool filtro;
  const CustomAppBar({
    Key? key,
    required this.heght,
    this.filtro = false,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(heght);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProdProvider>(context);
    return AppBar(
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: Theme.of(context).errorColor),
      backgroundColor: Theme.of(context).colorScheme.error,
      title: const Padding(
        padding: EdgeInsets.only(top: 5),
        child: Text(
          "Centauro",
          style: TextStyle(fontFamily: "bebas", fontSize: 30),
        ),
      ),
      actions: const [
        //lugar do carrinho de compra
        Padding(
          padding: EdgeInsets.only(right: 5),
          child: Icon(Icons.shopping_cart),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(58),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: const SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.keyboard_voice),
                        icon: Padding(
                          padding: EdgeInsets.only(left: 9),
                          child: Icon(Icons.search),
                        ),
                        hintText: 'O que voçẽ procura? :)'),
                  ),
                ),
              ),

              //filto de pesquisa....
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Visibility(
                    visible: filtro,
                    child: Row(
                      children: [
                        if (provider.grade) ...[
                          // Icon(
                          //   Icons.list_rounded,
                          //   color: Colors.white,
                          // ),
                          // Text(
                          //   'Lista',
                          //   style: TextStyle(color: Colors.white),
                          // )
                          iconFiltro(Icons.list_rounded, 'lista', () {
                            provider.filtroEscolha();
                          })
                        ] else ...[
                          // Icon(
                          //   Icons.grid_view,
                          //   color: Colors.white,
                          // ),
                          // Text(
                          //   'grade',
                          //   style: TextStyle(color: Colors.white),
                          // )
                          iconFiltro(Icons.grid_view, 'grade', () {
                            provider.filtroEscolha();
                          })
                        ],
                        //ordenar
                      ],
                    ),
                  ),
                  iconFiltro(
                    Icons.reorder_outlined,
                    "ordenar",
                    () => showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            backgroundColor: Colors.transparent,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(top: heght - 19),
                                  height: 150,
                                  width: 120,
                                  child: Column(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          provider.menorPreco();
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("menor preço"),
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.all(0),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          provider.Popularidade();
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("popularidade"),
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.all(0),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          provider.maiorPreco();
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("maior preço"),
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.all(0),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                ))
                              ],
                            ),
                          );
                        }),
                  ),
                  iconFiltro(Icons.filter_alt_off_outlined, 'filtro', () {
                    showDialog(
                      context: context,
                      builder: ((context) => Scaffold(
                        appBar: AppBar(
                          backgroundColor: Colors.grey,
                          title: Text("Filtra por:"),
                          
                        ),
                        body: ListTile(
                          trailing: Icon(Icons.vertical_align_bottom),
                        )
                      )),
                    );
                  })
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget iconFiltro(IconData icon, String nome, VoidCallback? funcao) {
  return InkWell(
    onTap: funcao,
    child: Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          nome,
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}
