import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  List<Image> listas;
  CarouselWidget({Key? key,required this.listas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.22,
      width: double.infinity,
      child: Center(
        child: Carousel(
          autoplay: false,
          dotSize: 4,
          dotSpacing: 12,
          dotColor: Colors.white,
          dotIncreasedColor: Colors.green[600],
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.bottomCenter,
          images: listas,
        ),
      ),
    );
  }
}
