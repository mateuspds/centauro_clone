import 'package:flutter/material.dart';

class TitleList extends ListTile {
  final String texto;
  final IconData icons;
  final Widget? trailinging;
  final VoidCallback? fuction;
  const TitleList({Key? key, required this.texto, required this.icons,  this.trailinging,this.fuction  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(texto),
      leading: Icon(
        icons,
      ),
      trailing: trailinging,
      onTap:fuction,
    );
  }
}
