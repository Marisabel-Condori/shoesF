import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/boton_flotante_widget.dart';

import 'package:shoes_app/src/widgets/custom_appbar_widget.dart';
import 'package:shoes_app/src/widgets/descrip_zapato_widget.dart';
import 'package:shoes_app/src/widgets/zapatoSizePreview.dart';

class ZapatoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBarWidget('for you'),
          SizedBox(height: 20.0),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ZapatoSizePreviewWidget(),
                  ZapatoDescripcionWidget(
                    titulo: 'Nike Air Max 720',
                    descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  
                ],
              ),
            )
          ),
          BotonFlotanteWidget(precio: 180.0,)  
        ],
      )
    );
  }
}