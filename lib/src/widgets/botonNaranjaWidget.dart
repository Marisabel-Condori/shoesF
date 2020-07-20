import 'package:flutter/material.dart';

class BotonNaranja extends StatelessWidget {
  final String texto;

  BotonNaranja({this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(this.texto, style: TextStyle(color: Colors.white),),
      width: 100.0, height: 40.0,
      decoration: BoxDecoration(
        color: Colors.orange[300],
        borderRadius: BorderRadius.circular(100.0)
      ),
    );
  }
}