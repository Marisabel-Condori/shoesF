import 'package:flutter/material.dart';

class ZapatoSizePreviewWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 400.0,
        decoration: BoxDecoration(
          color: Color(0xffF8D468),
          borderRadius: BorderRadius.circular(50.0)
        ),
        child: Column(
          children: [
            //zapato con sombra
            ZapatoConSombra(),
            // tallas
          ],
        ),
      ),
    );
  }
}

class ZapatoConSombra extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Image(image: AssetImage('assets/imgs/azul.png')),
          _Sombra()
        ],
      ),
    );
  }
}

class _Sombra extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        height: 100.0, width: 200.0,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: <BoxShadow>[
            BoxShadow( color: Color(0xffEAA14E), blurRadius: 40.0)
          ]
        ),
      ),
    );
  }
}