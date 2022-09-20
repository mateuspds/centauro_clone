import 'package:flutter/material.dart';

class CardCompra extends StatelessWidget {
  const CardCompra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var csereen = size.height - MediaQuery.of(context).padding.top ;
    return Card(
      elevation: 10,
      color: Colors.grey[300],
      child: SizedBox(
        width: double.infinity,
        height: size.height *0.083,
        child: ListTile(
          minLeadingWidth: MediaQuery.of(context).size.width * 0.01,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: const [
                  Text(
                    "Ganhe 10% OFF -",
                    style: TextStyle(
                        fontWeight: FontWeight.w900, color: Colors.black),
                  ),
                  Text(
                    "Cupom:",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "10APP",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "na sua primeira compra no App",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Válido para produtos vendudos e entregues pela centauro",
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.w900),
                  ),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "regras e exceções",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 6,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          leading: Icon(Icons.phone_android),
        ),
      ),
    );
  }
}
