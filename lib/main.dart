import 'package:clone_centauro/Pages/Produto.dart';
import 'package:clone_centauro/Pages/detalheProduto.dart';
import 'package:clone_centauro/date/CardDateProviderImage.dart';
import 'package:clone_centauro/date/providerProd.dart';
import 'package:clone_centauro/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Pages/Home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => carouselImage(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProdProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Home(),
        theme: ThemeData(
          primaryColor: Colors.red,
          // fontFamily:'bebas',
        ).copyWith(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.red,
            backgroundColor: Colors.white,
          ),
        ),
        initialRoute: Rotas.home,
        routes: {
          Rotas.home: (context) => Home(),
          Rotas.produto: (context) => produtoCard(),
          Rotas.detalheProduto:(context) => DetalheProduto()
        },
      ),
    );
  }
}
