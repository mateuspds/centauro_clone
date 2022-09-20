import 'package:clone_centauro/componentes/list_Title.dart';
import 'package:clone_centauro/date/CardDateProviderImage.dart';
import 'package:clone_centauro/date/date.dart';
import 'package:clone_centauro/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).colorScheme.error,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Olá, Visitante!",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Clique aqui parra entrar ou se cadastrar",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  TitleList(
                    texto: "Inicio",
                    icons: Icons.house_rounded,
                    fuction: () {
                      Navigator.of(context).pushReplacementNamed(Rotas.home);
                    },
                  ),
                  TitleList(
                    texto: "Categorias",
                    icons: Icons.format_list_bulleted_outlined,
                    fuction: () {
                      Navigator.of(context).pushReplacementNamed(Rotas.produto,
                          arguments: Dumdate[0]);
                    },
                  ),
                  const TitleList(texto: 'Favoritos', icons: Icons.favorite),
                  const TitleList(
                      texto: 'Carrinho', icons: Icons.shopping_cart),
                  const TitleList(
                      texto: "Meus Pedidos", icons: Icons.delivery_dining),
                  const TitleList(
                      texto: "Meus Vales",
                      icons: Icons.wallet_giftcard_rounded),
                  const TitleList(texto: "Minha Conta", icons: Icons.person),
                  const TitleList(
                      texto: "Troca e Devoluções",
                      icons: Icons.currency_exchange),
                  const TitleList(
                      texto: "Covid19 - Informações",
                      icons: Icons.warning_amber),
                  TitleList(
                    texto: "Nossas Lojas",
                    icons: Icons.store,
                    trailinging: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.error,
                              width: 1)),
                      child: Text(
                        "operação covid-19",
                        style: TextStyle(color: Theme.of(context).errorColor),
                      ),
                    ),
                  ),
                  TitleList(
                    texto: "Atendimento",
                    icons: Icons.headphones_outlined,
                    trailinging: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.error,
                              width: 1)),
                      child: Text(
                        "operação covid-19",
                        style: TextStyle(color: Theme.of(context).errorColor),
                      ),
                    ),
                  ),
                  const TitleList(
                      texto: "Avalie nosso aplicativo", icons: Icons.star),
                  const TitleList(
                      texto: "Termos e Politicas", icons: Icons.book),
                  const TitleList(
                      texto: "Avalie nosso aplicativo", icons: Icons.star),
                  const TitleList(
                      texto: "Termos e Políticas", icons: Icons.book_rounded),
                  const Divider(height: 1, color: Colors.black),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Centauro nas Redes Sociais",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.facebook)),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              'assets/icon/icons8-instagram.svg')),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icon/twitter.svg')),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icon/youtube.svg'))
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(height: 1, color: Colors.black),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.run_circle),
                      SizedBox(
                        height: 20,
                        child: VerticalDivider(
                          color: Colors.grey,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                          width: 20,
                        ),
                      ),
                      Text("Versão 1.9.65")
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(height: 1, color: Colors.black),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
