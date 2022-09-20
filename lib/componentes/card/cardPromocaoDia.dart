import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:clone_centauro/componentes/cosousel/carousel.dart';
import 'package:flutter/material.dart';

class cardPromocaoDia extends StatelessWidget {
  const cardPromocaoDia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Ofertas Diárias",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        ),
        const Text(
          "No ar só até as 10h de amanhã. Não perca!",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
        ),
        ClipRRect(
          child: Image(
            fit: BoxFit.contain,
            width: double.infinity,
            height: size.height * 0.2,
            image:const  NetworkImage(
              "https://imgcentauro-a.akamaihd.net/05_Campanhas/2022/OfertasDiarias/08-Agosto/20220809/dia-desk-01.png",            
            ),
          ),
        ),
      ],
    );
  }
}
