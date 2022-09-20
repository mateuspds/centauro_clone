import 'package:clone_centauro/componentes/card/card1Compra.dart';
import 'package:clone_centauro/componentes/card/cardPromocaoDia.dart';
import 'package:clone_centauro/componentes/cosousel/carousel.dart';
import 'package:clone_centauro/componentes/drawerPersonalizado.dart';
import 'package:clone_centauro/date/CardDateProviderImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.13),
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Theme.of(context).errorColor),
          backgroundColor: Theme.of(context).colorScheme.error,
          title: const Text(
            "Centauro",
            style: TextStyle(fontFamily: "bebas", fontSize: 30),
          ),
          actions: const [
            //lugar do carrinho de compra
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(Icons.shopping_cart),
            ),
          ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(48),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Card(
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
              )),
        ),
      ),
      drawer: const DrawerApp(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CardCompra(),
            const SizedBox(height: 10),
            const cardPromocaoDia(),
            const SizedBox(height: 10),
            CarouselWidget(listas: Provider.of<carouselImage>(context).itens),
            
          ],
        ),
      ),
    );
  }
}
