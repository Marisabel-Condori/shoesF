import 'package:flutter/material.dart';

class BotonNaranja extends StatelessWidget {
  final String texto;
  final double alto;
  final double ancho;
  final Color colorBtn;

  BotonNaranja({
    this.texto, 
    this.alto = 40.0, 
    this.ancho = 100.0, 
    this.colorBtn = Colors.orange});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(this.texto, style: TextStyle(color: Colors.white),),
      width: this.ancho, height: this.alto,
      decoration: BoxDecoration(
        color: this.colorBtn,
        borderRadius: BorderRadius.circular(100.0)
      ),
    );
  }
}