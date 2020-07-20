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
            _ZapatoTalla()
          ],
        ),
      ),
    );
  }
}

class _ZapatoTalla extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CajaTallaPersonalizado(7),
          _CajaTallaPersonalizado(7.5),
          _CajaTallaPersonalizado(8),
          _CajaTallaPersonalizado(8.5),
          _CajaTallaPersonalizado(9),
          _CajaTallaPersonalizado(9.5),
        ],
      ),
    );
  }
}

class _CajaTallaPersonalizado extends StatelessWidget {
  final double numero;
  _CajaTallaPersonalizado(this.numero);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('${this.numero.toString().replaceAll('.0', '')}', 
        style: TextStyle(
          color: Color(0xffF1A23A),
          fontSize: 16.0
        ),
      ),
      width: 40.0, height: 40.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [

        ]
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
          Positioned(
            bottom: 20, right: 0,
            child: _Sombra(),
          ),
          Image(image: AssetImage('assets/imgs/azul.png')),  
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
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: <BoxShadow>[
            BoxShadow( color: Color(0xffEAA14E), blurRadius: 40.0)
          ]
        ),
      ),
    );
  }
}