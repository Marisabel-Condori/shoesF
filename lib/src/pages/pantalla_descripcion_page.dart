import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/botonNaranjaWidget.dart';
import 'package:shoes_app/src/widgets/descrip_zapato_widget.dart';
import 'package:shoes_app/src/widgets/zapatoSizePreview.dart';

class PantallaDescripcionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ZapatoSizePreviewWidget( screenSize: true,),
            ZapatoDescripcionWidget(
              titulo: 'Nike Air Max 720',
              descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",        
            ),
            _MontoByNow(),
            _ColoresYmas(),
            _BotonesCardSettings()
          ],
        ),
      ),
    );
  }
}

class _BotonesCardSettings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0),
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _CardPersonalizado(Icon(Icons.favorite, color: Colors.red,), ),
          _CardPersonalizado(Icon(Icons.star, color: Colors.grey.withOpacity(0.4),),),
          _CardPersonalizado(Icon(Icons.settings, color: Colors.grey.withOpacity(0.4),),)
        ],
      ),
    );
  }
}

class _CardPersonalizado extends StatelessWidget {
  final Icon iconB;

  _CardPersonalizado(this.iconB);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0, height: 40.0,
      child: iconB,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black38, 
            spreadRadius: -5, 
            blurRadius: 20, 
            offset: Offset(0, 10)
          )
        ]
      ),
    );
  }
}

class _MontoByNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: [
          Text('\$180.0', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
          Spacer(),
          BotonNaranja(texto: 'By Now',),
        ],
      ),
    );
  }
}

class _ColoresYmas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(left: 90, child: _BotonColor(colorBtn: Color(0xffC6D642),)),
                Positioned(left: 60,child: _BotonColor(colorBtn: Color(0xffFFAD29),)),
                Positioned(left: 30,child: _BotonColor(colorBtn: Color(0xff2099F1),)),
                _BotonColor(colorBtn: Color(0xff364D56),),
                
              ],
            )
          ),
          BotonNaranja(
                  texto: 'More related items',
                  ancho: 150.0,   alto: 30.0,
                  colorBtn: Colors.orange[300],)
        ],
      ),
    );
  }
}

class _BotonColor extends StatelessWidget {
  final Color colorBtn;
  _BotonColor({this.colorBtn});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:40 , height: 40,
      decoration: BoxDecoration(
        color: this.colorBtn,
        borderRadius: BorderRadius.circular(20.0)
      ),
    );
  }
}