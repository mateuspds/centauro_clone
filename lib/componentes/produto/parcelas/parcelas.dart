import 'package:flutter/material.dart';

class Parcelas extends StatelessWidget {
  final int parcelinha;
  const Parcelas({Key? key, required this.parcelinha}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:  TextSpan(
          text: parcelinha >= 190 ?'Até 7 vezes' : 'até 3 vezes',
          style:const TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
          children:const [
            TextSpan(
                text: ' sem juros',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w900))
          ]),
    );
  }
}
