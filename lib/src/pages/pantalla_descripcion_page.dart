import 'package:flutter/material.dart';
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
                      
          )
          ],
        ),
      ),
    );
  }
}