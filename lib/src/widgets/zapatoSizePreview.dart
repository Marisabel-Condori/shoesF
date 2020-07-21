import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/src/models/zapato_model.dart';
import 'package:shoes_app/src/pages/pantalla_descripcion_page.dart';

class ZapatoSizePreviewWidget extends StatelessWidget {
  final bool screenSize;

  ZapatoSizePreviewWidget({this.screenSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => PantallaDescripcionPage())),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (screenSize) ? 5.0 :30.0, 
          vertical: (screenSize)? 4.0:5.0
        ),
        child: Container(
          width: double.infinity,
          height: (screenSize)?350.0  :400.0,
          decoration: BoxDecoration(
            color: Color(0xffF8D468),
            borderRadius: (!screenSize)
            ? BorderRadius.circular(50.0)
            : BorderRadius.only(bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40)),
          ),
          child: Column(
            children: [
              //zapato con sombra
              ZapatoConSombra(),
              // tallas
              if(!screenSize)
                _ZapatoTalla()
            ],
          ),
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
    final zapatoModel = Provider.of<ZapatoModel>(context);
    return GestureDetector(
      onTap: () {
        final zapatoModel = Provider.of<ZapatoModel>(context, listen: false);
        zapatoModel.talla = this.numero;
      },
      child: Container(
        alignment: Alignment.center,
        child: Text('${this.numero.toString().replaceAll('.0', '')}', 
          style: TextStyle(
            color: (this.numero == zapatoModel.talla) ? Colors.white : Color(0xffF1A23A),
            fontSize: 16.0,
            fontWeight: FontWeight.bold
          ),
        ),
        width: 40.0, height: 40.0,
        decoration: BoxDecoration(
          color: (this.numero == zapatoModel.talla) ? Color(0xffffa31a):Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            if(this.numero == zapatoModel.talla) 
              BoxShadow( color: Color(0xffe68a00), blurRadius: 10.0, offset: Offset(0,5))
          ]
        ),
      ),
    );
  }
}

class ZapatoConSombra extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final zapatoModel = Provider.of<ZapatoModel>(context);
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 20, right: 0,
            child: _Sombra(),
          ),
          Image(image: AssetImage(zapatoModel.assetImage)),  
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