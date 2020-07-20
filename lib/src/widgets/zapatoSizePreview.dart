import 'package:flutter/material.dart';

class ZapatoSizePreviewWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 300.0,
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
          Image(image: AssetImage('assets/imgs/azul.png'))
        ],
      ),
    );
  }
}