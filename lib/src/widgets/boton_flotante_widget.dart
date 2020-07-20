import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/botonNaranjaWidget.dart';

class BotonFlotanteWidget extends StatelessWidget {
  final double precio;
  BotonFlotanteWidget({this.precio});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity, height: 100.0,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(100.0)
        ),
        child: Row(
          children: [
            SizedBox(width: 20.0,),
            Text('\$$precio', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),),
            Spacer(),
            BotonNaranja(texto: 'Add to card',),
            SizedBox(width: 20.0,),
          ],
        ),
      ),
    );
  }
}

